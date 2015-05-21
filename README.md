Getting and Cleaning Data Project
=================================

## Description

Quoted from the course:

«*The purpose of this project is to demonstrate your ability to collect, work
with, and clean a data set. The goal is to prepare tidy data that can be used
for later analysis*»

## Dependencies

### R

The script was tested with **R version 3.2.0 (2015-04-16) -- "Full of Ingredients"**.

### Packages

The script assumes you have installed `plyr` and `dplyr`.

### OS

The script was tested on Linux Debian. I hope it will run smoothly on a Mac and
on Windows ([let me know if it's not the case](https://github.com/lkdjiin/getting-and-cleaning-data-project/issues)).

### curl

The script will attempt to download the original dataset and unzip it if it
doesn't find a directory named `UCI HAR Dataset`. To be able to download from
internet, the command `curl` **must** be available.

If `curl` could not be made available on your system, download the dataset by
yourself with the following link and unzip it.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Usage

First download the source code:

    $ git clone git@github.com:lkdjiin/getting-and-cleaning-data-project.git
    $ cd getting-and-cleaning-data-project

Now, you have two ways to produce the tidy dataset, named `tidy.txt`:

**First method** from your console:

    $ Rscript run_analysis.R # and wait some time ;)

**Second method** from R:

    source('run_analysis.R')

With this method you'll also have the tidy dataset in `final_data` as a tbl data
frame:

    final_data

In any case, when the file `tidy.txt` is produced, you could always read it
with this instruction:

    data <- read.table('./tidy.txt', header=TRUE, check.names=FALSE)

## Questions and/or Comments

Feel free to email [Xavier Nayrac](mailto:xavier.nayrac@gmail.com)
with any questions, or contact me on [twitter](https://twitter.com/lkdjiin).
