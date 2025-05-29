#!/usr/bin/env python3
# credit: Daan van Dijk, edited by: Leandro Meier
import os, sys, re
from pathlib import Path

if __name__ == "__main__":
    if len(sys.argv) == 1:
        print("compress.py [path]")
        print("This script compresses moodle submissions directories using ghostscript's pdfwrite")
        print("e.g. compress.py '/path/to/submission_folder' creates a new folder\nnamed '/path/to/submission_folder_compressed' with all the compressed pdf files.")
    else:
        for path in sys.argv[1:]:
            if os.path.exists(path) == False:
                print("Path doesn't exists: {}".format(path))
                continue

            abspath = os.path.abspath(path)
            print("Compressing {}".format(abspath))
            files = [os.path.abspath(os.path.join(root, name)) 
                    for root, dirs, files in
                    os.walk(path) for name in files]
            newAbspath = abspath + "_compressed"

            if os.path.exists(newAbspath) == False:
                os.mkdir(newAbspath)

            for f in files:
                print("Compressing {}...".format(f))
                res = re.search("{}/([^/]+)".format(abspath), f)
                subfolderPath = os.path.join(newAbspath, res[1])
                newpath = os.path.join(subfolderPath, Path(f).stem + "_compressed.pdf")
                if os.path.exists(subfolderPath) == False:
                    os.mkdir(subfolderPath)
                if os.path.exists(newpath) == False:
                    command = "ghostscript -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile='{}' '{}'".format(
                            newpath, f)
                    os.system(command)

                # if the file size is bigger than 5mb, try a different compressing method
                if os.path.getsize(newpath) > 5 * 1024 * 1024:
                    newpath2 = os.path.join(newAbspath, res[1] + "2")
                    if os.path.exists(newpath2) == False:
                        os.mkdir(newpath2)

                    newpath2Out = os.path.join(newpath2, 'out')
                    newpath2Pdf = os.path.join(subfolderPath, Path(f).stem + "_c2.pdf")

                    if os.path.exists(newpath2Pdf) == False:
                        # see: https://stackoverflow.com/questions/43085889/how-to-convert-a-pdf-into-jpg-with-command-line-in-linux
                        command = f"pdftoppm -jpeg -r 300 '{f}' '{newpath2Out}'"
                        print(command)
                        os.system(command)

                        # now join them together
                        command = f"cd '{newpath2}'; magick `ls -v *.jpg` '{newpath2Pdf}'"
                        print(command)
                        os.system(command)
