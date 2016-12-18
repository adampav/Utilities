#!/usr/bin/python

from os.path import expanduser
user_home = expanduser("~")
folder=['%s/file1' %user_home, '%s/file2' %user_home]
file1 = open(folder[0], 'r')
file2 = open(folder[1], 'r')
dont_read_file2 = False

with open('%s/final.csv' %user_home, 'w') as outfile:
    for line in file1:
        hh = line.split()
        if not dont_read_file2:
          mm = file2.readline().split()
        if mm[1] == hh[1]:
            print "\t".join(linear.strip() for linear in [hh[0], mm[0], hh[1]])
            dont_read_file2 = False
        else:
            print "\t".join(linear.strip() for linear in [hh[0], "0", hh[1]])
            dont_read_file2 = True
