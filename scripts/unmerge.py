#!/usr/bin/env python3
# Short python script to unmerge pdf into specified page lenghts 
# that are given by a csv file 

# created by: Leandro Meier
import os, sys, re
import pypdf
import csv
import string
import fitz
# fitz is in the library python-pymupdf
# import pdfreader
from pypdf import PdfReader, PdfWriter
from pathlib import Path


if __name__ == "__main__":
    if len(sys.argv) == 1:
        print("merge.py [path]")
        print("Short python script to split a pdf into a number of pdfs")
        print("per page numbers specified in a separate csv file")
        print("e.g. merge.py '/path/to/folder'   ")
        
    for path in sys.argv[1:]:
        if os.path.exists(path) == False:
            print("Path doesn't exist: {}".format(path))
            continue
    else:
        abspath = os.path.abspath(path)
        mergedPath =  abspath + "/merged.pdf"
        trackingPath =  abspath + "/tracking.csv"
        print("Unmerging file {}".format(mergedPath))
        mergedFile = open(mergedPath) 
        # print("opened file")
        pages = [3,1,6,2] #to be replaced by actual list
        reader = PdfReader(mergedPath)


        # pdf counts pages starting at 0
        start = 0
        end = 0
        k = 1
        for p in pages:
            end = end + p
            writer = PdfWriter()
            outputPath = abspath + "/file_" + str(k)+ ".pdf"
            print(outputPath)
            print(str(start))
            print(str(end))
            for i in range(start, end):
                print(i)
                writer.add_page(reader.pages[i])
                with open(outputPath, "wb") as newFile:
                    writer.write(newFile)
            start = start + p
            k = k+1






        # for page in range(pdf.getNumPages()):
        #     pdf_writer = PdfFileWriter()
        #     pdf_writer.addPage(pdf.getPage(page))

        #     output = f'{name_of_split}{page}.pdf'
        #     with open(output, 'wb') as output_pdf:
        #         pdf_writer.write(output_pdf)


        # # trackingFolder = abspath + "/tracking"
        # trackingFile =  abspath + "_tracking.csv"
        # mergedFile =  abspath + "_merged.pdf"

        # # open file, create if it does not exist
        # pageList = open(trackingFile, "a")

        # # if not os.path.exists(trackingFolder):
        # #     os.mkdir(trackingFolder)


        # # write file lengths into separate file
        # for f in files:
        #     print("reading length of {}".format(f))
        #     # creating a pdf reader object
        #     reader = PdfReader(format(f))
        #     pageList.write(str(len(reader.pages)))
        #     pageList.write(",")

        # # merge files
        # result = fitz.open()
        # for pdf in files:
        #     with fitz.open(pdf) as mfile:
        #         result.insert_pdf(mfile)
        # result.save(mergedFile)
