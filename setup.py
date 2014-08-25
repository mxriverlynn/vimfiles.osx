#!/usr/bin/python
import os
import sys

vimdir = os.path.abspath(os.path.dirname(__file__))
homedir = os.path.expanduser("~")
files = (".vimrc", ".vim")

for file in files:
  os.system("mv " + homedir + "/" + file + " " + homedir + "/" + file + ".bak")
  os.system("ln -s " + vimdir + "/" + file + " " + homedir + "/" + file)
