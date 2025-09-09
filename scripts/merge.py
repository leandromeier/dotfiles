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
        sys.exit()
        
        # todos:
        # check if the merging and csv files exist already
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
        trackingFile =  abspath + "/tracking.csv"
        mergedFile =  abspath + "/merged.pdf"
        # open file, create if it does not exist
        pageList = open(trackingFile, "a")
        result = fitz.open()
        for f in files:
            res = re.search("{}/([^/]+)".format(abspath), f)
            subfolderPath = os.path.join(abspath, res[1])
            # it is easier to save the new filenames here than in unmerge.py
            newFilename = os.path.join(subfolderPath, Path(f).stem + "_corrected.pdf")
            print("Merging {}".format(f))
            reader = PdfReader(format(f))
            # save name and length to csv file
            pageList.write(str(newFilename)+ "," + str(len(reader.pages)) + "\n")
            # finally, append the file to the collection
            with fitz.open(f) as mfile:
                result.insert_pdf(mfile)
        result.save(mergedFile)
        # merge files
        # for pdf in files:
