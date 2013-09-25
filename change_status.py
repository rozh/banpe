# -*- coding: utf-8 -*-
import Skype4Py
import sys

def main():
	skype = Skype4Py.Skype()
	skype.Attach()
	argc = len(sys.argv)
	if skype.CurrentUser.OnlineStatus != "DND":
		skype.ChangeUserStatus("DND")
	elif argc > 1 and skype.CurrentUser.OnlineStatus == "DND":
		skype.ChangeUserStatus("INVISIBLE")

if __name__ == '__main__':
	main()
