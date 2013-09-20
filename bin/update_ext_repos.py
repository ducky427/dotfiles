#!/usr/bin/env python

import os, os.path, commands, sys

DIR = '/Users/developer/workspace/thirdparty'

repos = {'.svn' : 'svn up', '.hg' : 'hg pull -u', '.git' : "git pull && git gc" }

for d in os.listdir(DIR):
    if d == '.DS_Store':
        continue
    print d

    for r, comm in repos.items():
        result = os.path.exists(os.path.join(DIR, d, r))
        if result:
            full_comm = "cd %s && %s" % (os.path.join(DIR, d), comm)
            status, output = commands.getstatusoutput(full_comm)
            print output
