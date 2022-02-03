# Nirridit

Linux and macOS have Python installed, so keyloggers and backdoors written in Python will usually work.  This is not the case for Windows. And it is best practice developing the scripts on a Windows machine version the evil files are intended for. 

This repo is reserved for development of scripts on a Windows 10 machine, as part of [practicing with Python 3 in interesting ways](https://github.com/tymyrddin/ymrir) and learning about Windows. 
With many thanks to [EONRaider](https://github.com/EONRaider), [BlackHat](https://www.blackhat.com/), and [ZSecurity](https://zsecurity.org/).

## Requirements

<img align="left" src="https://github.com/tymyrddin/darkest-forest/blob/main/assets/images/warning.png">_Do not implement and execute these on a network or system you do not own. Execute only on [your own systems for learning purposes](https://github.com/tymyrddin/ymrir/wiki). Do not execute these on any production network or system, unless "Rules of engagement" have been agreed on, and you have a "Get out of jail free" card of some sort. The scripts have defaults set for our lab. If you wish to run these scripts, change the defaults for your context or provide arguments._

Use [pyinstaller](https://github.com/tymyrddin/nirridit/wiki/Pyinstaller) to create the binaries.

## Scripts

- [x] [Keylogger](keyloggers) 
- [x] [Screenshot](screenshot)
- [x] [Shellcode execution](shellcode) <= in progress
- [ ] Sandbox detection
- [ ] Encrypting and decrypting files
- [ ] Email exfiltration
- [ ] File transfer exfiltration
- [ ] Using a webserver for exfiltration
- [ ] Process monitor
- [ ] Windows token privileges
- [ ] File monitor
- [ ] Code injection
- [ ] Using volatility

## Problems or Suggestions

This project welcomes contributions and suggestions. 

[Open an issue here](https://github.com/tymyrddin/nirridit/issues)