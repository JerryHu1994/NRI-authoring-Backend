#!/usr/bin/env python

# Log the regular message
def INFO(*info):
    infoToPrint = ""
    for i in info:
        infoToPrint += i
    print "[INFO]: ", infoToPrint

# log the error message
def ERROR(*error):
    errToPrint = ""
    for i in error:
        errToPrint += i
    print "[ERROR]: ", errToPrint