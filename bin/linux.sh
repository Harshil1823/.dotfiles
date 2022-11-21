#!/bin/bash

touch linuxsetup.log #creates the file

platform='unknown'
unamestr=$(uname)
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
else
   echo error >> linuxsetup.log
fi


#all above gets the operating type from the command. Stores it in unamestr variable. And then executes a if else statements.

mkdir -p TRASH

mv vimrc bup_vimrc
echo "vim rc file was changed to bup_vimrc" >> linuxsetup.log

etc/vimrc > .vimrc #redirects the content (overwrite)

source ∼/.dotfiles/etc/bashrc_custom #prefer this over the sed command
