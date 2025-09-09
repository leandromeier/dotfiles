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
        
    for path in sys.argv[1:]:
        if not os.path.exists(path):
            print("Path doesn't exist: {}".format(path))
            sys.exit()
    else:
        abspath = os.path.abspath(path)
        mergedPath =  abspath + "/merged.pdf"
        trackingPath =  abspath + "/tracking.csv"
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








        # # pdf counts pages starting at 0
        # start = 0
        # end = 0
        # k = 1
        # for p in pages:
        #     end = end + p
        #     writer = PdfWriter()
        #     outputPath = abspath + "/file_" + str(k)+ ".pdf"
        #     # print(outputPath)
        #     # print(str(start))
        #     # print(str(end))
        #     for i in range(start, end):
        #         # print(i)
        #         writer.add_page(reader.pages[i])
        #         with open(outputPath, "wb") as newFile:
        #             writer.write(newFile)
        #     start = start + p
        #     k = k+1






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
