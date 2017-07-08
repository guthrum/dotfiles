#!/usr/bin/env python

import os
import ctypes
import shutil

list_of_files = ["~/.vimrc", "~/.zshrc", "~/.tmux.conf"]

def check_if_hidden_file(filepath):
    name = os.path.basename(os.path.expanduser(filepath))
    return name.startswith('.')

def copy_file(filepath):
    dest = filepath
    dest = dest.replace("~/", "")

    if check_if_hidden_file(filepath):
        dest = dest[1:]
    print("Copying from {} to {}".format(filepath, dest))
    shutil.copyfile(os.path.expanduser(filepath), os.path.expanduser(dest))


for item in list_of_files:
    copy_file(item)
