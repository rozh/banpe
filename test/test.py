# -*- coding: utf-8 -*-
import Skype4Py

def main():
	skype = Skype4Py.Skype()
	skype.Attach()
	print skype.CurrentUser.OnlineStatus

if __name__ == '__main__':
	main()
