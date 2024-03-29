% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adap.to.rc.R
\name{adap.to.rc}
\alias{adap.to.rc}
\title{adap.to.rc}
\usage{
adap.to.rc(
  seq = "seq.csv",
  spec.abund = "signal.csv",
  msp = "spectra.msp",
  annotations = "annotations.xlsx",
  mzdec = 1,
  min.score = 700,
  manual.name = FALSE,
  qc.tag = "qc",
  blank.tag = "blank",
  factor.names = c()
)
}
\arguments{
\item{seq}{file name/path to sequence file - expect filenames in column 1 and sample names in column 2.  filenames should match those in spec.abund}

\item{spec.abund}{file name/path to adap-big export of signal intensities. .csv file expected}

\item{msp}{file name/path to .msp file created by adap-big}

\item{annotations}{file name/path to annotations .xlsx file.  generally 'simple_export.xlsx'}

\item{mzdec}{mz decimals to report for internal storage/reporting.  generally we want 0 for adap kdb}

\item{min.score}{700 (out of 1000) by default}

\item{manual.name}{when looking up inchikey/names, should manual input be used to fill ambiguous names? generally recommend TRUE}

\item{qc.tag}{a character string by which to recognize a sample as a qc sample.  i.e. 'QC' or 'qc'.}

\item{blank.tag}{a character string by which to recognize a sample as a blank sample.  i.e. 'blank' or 'Blank'.}

\item{factor.names}{factor names}
}
\value{
returns a ramclustR structured object suitable for down stream processing steps.
}
\description{
use pubchem rest and view APIs to retreive structures, CIDs (if a name or inchikey is given), synonyms, and optionally vendor data, when available.
}
\details{
useful for moving from chemical name to digital structure represtation. greek letters are assumed to be 'UTF-8' encoded, and are converted to latin text before searching.   if you are reading in your compound name list, do so with 'encoding' set to 'UTF-8'.
}
\author{
Corey Broeckling
}
