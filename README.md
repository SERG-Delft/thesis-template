# Official SERG-Delft template master thesis

This repository hosts the source code for the official LateX template for a master thesis at SERG-Delft.

We reccomend you read and follow suggestions from the [LaTeX advice guide](https://github.com/dspinellis/latex-advice).

## Import for ShareLatex

If you would like to import this template into ShareLatex, perform the following steps:

1. Click the green "Clone or download"-button in the top-right corner of https://github.com/SERG-Delft/thesis-template
1. Click "Download ZIP"
1. Log in on https://www.sharelatex.com
1. Click "New Project" in the top-left corner of https://www.sharelatex.com/project
1. Click "Upload Project"
1. Click "Select a .zip file"
1. Select the ZIP you just downloaded

**:warning: Important! :warning:**

ShareLatex does not parse the `*.ps` files in `img/`.
These files should therefore be manually uploaded to the ShareLatex project to have a non-erroring build.

## Build instructions

If you would like to build this project on your local machine, ensure that `texlive-full` is installed.
You can follow the instructions on https://www.tug.org/texlive/quickinstall.html but the TLDR for Debian-based systems is:

```bash
sudo apt-get install texlive-full
sudo apt-get install latexmk
```

Then run `make` and the project should build.
