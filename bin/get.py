#!/usr/bin/env python3

import os
import shlex
import subprocess
from argparse import ArgumentParser


def main():
    p = ArgumentParser()
    p.add_argument("url", help="url for plugin.")

    args = p.parse_args()

    url = args.url
    if not url.startswith("http"):
        if not url.startswith("github.com"):
            url = os.path.join("github.com", url)
        url = "https://" + url

    package = url.rsplit("/", 1)[-1]
    subprocess.run(
        shlex.split(
            "git submodule add --force {url} pack/default/start/{package} ".format(url=url, package=package)))


if __name__ == "__main__":
    main()
