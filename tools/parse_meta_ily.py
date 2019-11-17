import os
import requests
import argparse



def parse_meta_ily(filepath):
    ily_file = open(filepath)
    d = {}
    for line in ily_file:
        if "=" in line:
            lhs = line.split("=")[0].replace(" ", "").replace("\t", "")
            first = line.find('"') + 1
            second = first + line[first:].find('"')
            rhs = line[first:second]
            d[lhs] = rhs

    ily_file.close()


def deploy():
    zip_file_name = ""
    pdf_file_name = ""

    for file in os.listdir():
        if file.endswith(".zip"):
            zip_file_name = file
        if file.endswith(".pdf"):
            pdf_file_name = file

    if not (zip_file_name and pdf_file_name):
        raise ValueError("Cannot find zip and pdf file")

    url = "http://nun-singet-und-seid-froh.info/piece/store"
    files = {
        "pdf": open(pdf_file_name),
        "midi": open(zip_file_name)
    }

    data = parse_meta_ily("meta.ily")

    requests.post(
        url=url,
        files=files,
        data=data,
    )

if __name__ == "__main__":
    deploy()