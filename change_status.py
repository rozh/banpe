# -*- coding: utf-8 -*-
import Skype4Py
import sys

def main():
	skype = Skype4Py.Skype()
	skype.Attach()
	argc = len(sys.argv)
	status = skype.CurrentUser.OnlineStatus
	if argc==1 and status != "DND":
		skype.ChangeUserStatus("DND")
	elif argc > 1 and status == "DND":
		skype.ChangeUserStatus("ONLINE")
		# skype.ChangeUserStatus("INVISIBLE")

if __name__ == '__main__':
	main()
