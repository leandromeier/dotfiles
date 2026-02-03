#!/usr/bin/env python3
# Short python script to unmerge pdf into specified page lenghts 
# that are given by a csv file 

# created by: Leandro Meier


import os, sys, re
import pypdf
import csv
import string
# fitz is in the library python-pymupdf
# import fitz
# import pdfreader
from pypdf import PdfReader, PdfWriter
from pathlib import Path


if __name__ == "__main__":
    if len(sys.argv) <= 1 :
        print("merge.py [path]")
        print("Short python script to split a pdf into a number of pdfs per page numbers specified in a separate csv file")
        print("e.g. unmerge.py '/path/to/folder' ")
        print("the folder passed as an argument must contain a merged pdf file \n'merged.pdf' as well as a file 'tracking.csv' containing the data to split by \nin the form of lines [name, pagenumber] where pagenumber is the number of pages \nof the original file (to split back to)")
        sys.exit()

    #helper function to trim off excess '/' at the end
    def trim_slash(s):
        if s[len(s)-1] == "/":
            return s[ :len(s)-1 ]
        return s

        
    for path in sys.argv[1:]:
        if not os.path.exists(path):
            print("Path doesn't exist: {}".format(path))
            sys.exit()
    else:
        abspath = os.path.abspath(path)
        argFolderName = trim_slash(sys.argv[1])
        mergedPath =  abspath + "/" + argFolderName + "_merged.pdf"
        trackingPath =  abspath + "/" + argFolderName + "_tracking.csv"
        print("Unmerging file {}".format(mergedPath))
        mergedFile = open(mergedPath) 
        reader = PdfReader(mergedPath)
        with open(trackingPath, mode ='r') as trackingFile:
            csvFile = csv.reader(trackingFile)
            start = 0
            end = 0
            for line in csvFile:
                # if not len(line) == 2:
                #     print("Are you sure this is the correct file?")
                try:
                    [fileName, page] = line
                except ValueError:
                    print("Are you sure this is the correct tracking data?")
                    sys.exit()
                try:
                    p = int(page)
                except ValueError:
                    print('Something went wrong, page number not an integer')
                    sys.exit()
                print("Fetching original pages for " + fileName)
                end = end + p
                writer = PdfWriter()
                outputPath = fileName
                for i in range(start, end):
                    try:
                        writer.add_page(reader.pages[i])
                    except IndexError:
                        print("Page index out of bounds, check your page numbers")
                        sys.exit()
                    with open(outputPath, "wb") as newFile:
                        writer.write(newFile)
                start = start + p


