#!/usr/bin/env python3

import os
import argparse
import arxiv


def url_to_id(url: str) -> str:
    """
    Parse the given URL of the form `https://arxiv.org/abs/1907.13625` to the id `1907.13625`.

    Args:
        url: Input arxiv URL.

    Returns:
        str: ArXiv article ID.
    """
    # Strip filetype
    if url.endswith(".pdf"):
        url = url[:-4]

    return url.split("/")[-1]


def check_out_dir(directory: str):
    """Check if the output directory exists. If not, ask the user to mkdir."""
    if not os.path.exists(directory):
        print(f"Directory {directory} does not exist. Create? [y/n] ", end="")
        ans = input().lower().strip()
        if ans == "y":
            os.makedirs(directory)
        elif ans == "n":
            print("Exiting now.")
            exit(1)
        else:
            print("Invalid input. Exiting now.")
            exit(1)


# Convert the list of authors to comma-separated string of names
def authorsToString(s):
    #TODO: with regex maybe, filter out the initials, i.e only get F. Lastname instead of Firstname Lastname

    res = s[0].name
    if len(s) > 1:
        s = s[1:]
        for ele in s:
            res += ", " + ele.name
    return res

def download(article_id, directory: str, source:bool):

    # TODO: add checks for valid urls

    #TODO: deal with math mode characters, replace them by sth sensible
    check_out_dir(directory)


    # Download
    result = arxiv.Search(id_list=[article_id])
    result = [res for res in result.get()]
    result = result[0]
    authors = authorsToString(result.authors)


    print(f'Starting download of article: "{result.title}" ({article_id})')
    path = result.download_pdf(dirpath=directory, filename=( result.title + " by "+ authors + ".pdf"))

    print(f"Download finished! Result saved at:\n{path}")

    if source:
        print(f'Starting download of article source files: "{result.title}" ({article_id})')
        result.download_source(dirpath=directory)
