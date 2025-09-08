#!/usr/bin/env python3
# Short python script to merge a number of pdfs and recall for each pdf that was
# merged the name and length (in pages)
# In a second step, take the output of pdfmerge and split it back into files of the original
# page length

# created by: Leandro Meier
import os, sys, re
import pypdf
import csv
import string
import fitz
# import pdfreader
from pypdf import PdfReader#, PdfMerger
from pathlib import Path


if __name__ == "__main__":
    if len(sys.argv) == 1:
        print("merge.py [path]")
        print("Short python script to merge a number of pdfs and recall for each pdf")
        print("that was merged the name and length (in pages)")
        print("e.g. merge.py '/path/to/submission_folder' creates a new pdf \nnamed '/path/to/submission_folder/all_submissions' with all the pdf files, ")
        print("as well as a csv file storing the length of every file that was merged,")
        print("in the order they were read in.")
        
        # todos:
        # make reversible (write second script undoing this)
        # deal with exceptions / csv file exists etc
        # maybe: deal with different file sizes (one eternal page vs several ones)
        # maybe: incorporate compression before merging

    else:
        for path in sys.argv[1:]:
            if os.path.exists(path) == False:
                print("Path doesn't exist: {}".format(path))
                continue

        abspath = os.path.abspath(path)
        print("Merging files in {}".format(abspath))
        files = [os.path.abspath(os.path.join(root, name)) 
                    for root, dirs, files in
                    os.walk(path) for name in files]
        # trackingFolder = abspath + "/tracking"
        trackingFile =  abspath + "/tracking.csv"
        mergedFile =  abspath + "/merged.pdf"

        # open file, create if it does not exist
        pageList = open(trackingFile, "a")

        # write file lengths into separate file
        for f in files:
            print("reading length of {}".format(f))
            # creating a pdf reader object
            reader = PdfReader(format(f))
            # additionally, remember the name of the original file
            print("current ", format(f))
            pageList.write(format(f))
            pageList.write(",")
            pageList.write(str(len(reader.pages)))
            pageList.write(",")

        # merge files
        result = fitz.open()
        for pdf in files:
            with fitz.open(pdf) as mfile:
                result.insert_pdf(mfile)
        result.save(mergedFile)



# # printing number of pages in pdf file
# print(len(reader.pages))

# # creating a page object
# page = reader.pages[0]

# # extracting text from page
# print(page.extract_text())
            # pdfReader = pypdf.PdfReader(f)

# # count number of pages
# totalPages = len(pdfReader.pages)

# # print number of pages
# print(f"Total Pages: {totalPages}")



# # importing PyPDF library to read nr of pages
# import pypdf

# # opened file as reading (r) in binary (b) mode
# file = open('/home/hardik/GFG_Temp/dbmsFile.pdf',
#             'rb')

# # store data in pdfReader
# pdfReader = PyPDF2.PdfReader(file)

# # count number of pages
# totalPages = len(pdfReader.pages)

# # print number of pages
# print(f"Total Pages: {totalPages}")
