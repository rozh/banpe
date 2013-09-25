banpe
===========
banpe is "ban skype"

What
===========
Banpe changes DND (Do Not Disturb) online status of skype, when you do tasks or concentrate tasks and so on.
You can set constant time, skype is DND while this time, and after that skype online status is previous state.

OS
===========
* Ubuntu 12.04

How To Use
==========
You will need Skype4Py and you can run this to install it.

    easy_install Skype4Py

You run this command and you can run banpe.

    sh banpe.sh

And you can set time in this way. In this case, skype online status is DND while an hour.
(banpe default set time is an hour.)

    sh banpe.sh 1

Additionally, you can write this, if you set 30 minutes.

    sh banpe.sh 30

    * If arg <  10, the unit of set time is hour.
    * If arg >= 10, it is minute.

TODO
=========
*  READMEを書く．
   * 必要なapiのインストールなど充実させる．
* Macに対応させる．


Future
=========
*  killするのではなく，赤マークにする．
  完了
*  Skype以外のキータッチが多いときに赤マークにする．
