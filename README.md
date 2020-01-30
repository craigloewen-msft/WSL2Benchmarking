# WSL2Benchmarking README

This project has some scripts that can be used to benchmark file performance in WSL2 across drivefs and the Linux root file system. To run these tests run: ` sudo./runAllBenchmarks.sh`

Keep in mind you might need to change file permissions, and you might need to run in sudo.

I've tried to leave this as bare bones as possible, with only the core functionality.

# Overall structure

Each folder has a `runBenchmark.sh` which runs the scripts necessary. They all output to `testResults.txt` which would need to be munged to get the relevant values.

I haven't included any install scripts necessary so please read `runBenchmark.sh` of each project to see what you would need. 

## Git

You need to place a repo into the /git/gitRepo/ folder which will be used to create an offline install version and will install it in the same folder.

## node

You need to place a node project with npm packages in package.json in /node/nodeRepo which will get automatically bundled.

## dbench

You'll need to install dbench. If you're curious on what the options are please check the dbench man pages with `man dbench`.

# Actually running this

Right now, everything runs in their own local folders. If you want to run this and get the numbers for /mnt/c place this folder somewhere in /mnt/c and run the tests. If you want to get the Linux root file system performance place this folder somewhere in your Linux file system (like /~/) and run the tests.
