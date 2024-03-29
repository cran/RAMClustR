% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RCQC.R
\name{RCQC}
\alias{RCQC}
\title{RCQC}
\usage{
RCQC(
  ramclustObj = NULL,
  qctag = "QC",
  npc = 4,
  scale = "pareto",
  which.data = "SpecAbund",
  outfile = "ramclustQC.pdf"
)
}
\arguments{
\item{ramclustObj}{ramclustR object to analyze}

\item{qctag}{"QC" by default - rowname tag to identify QC samples}

\item{npc}{number of Principle components to calcuate and plot}

\item{scale}{"pareto" by default: PCA scaling method used}

\item{which.data}{which dataset to use.  "SpecAbund" by default}

\item{outfile}{name of output pdf file.}
}
\value{
new RC object, with QC samples moved to new slot.  prints output summary plots to pdf.
}
\description{
filter RC object and summarize quality control sample variation
}
\details{
plots a ramclustR summary plot.  first page represents the correlation of each cluster to all other clusters, sorted by retention time.  large blocks of yellow along the diaganol indicate either poor clustering or a group of coregulated metabolites with similar retention time.  It is an imperfect diagnostic, particularly with lipids on reverse phase LC or sugars on HILIC LC systems.  Page 2: histogram of r values from page 1 - only r values one position from the diagonal are used.  Pages 3:5 - PCA results, with QC samples colored red.  relative standard deviation calculated as sd(QC PC scores) / sd(all PC scores).  Page 6: histogram of CV values for each compound int he dataset, QC samples only.
}
\references{
Broeckling CD, Afsar FA, Neumann S, Ben-Hur A, Prenni JE. RAMClust: a novel feature clustering method enables spectral-matching-based annotation for metabolomics data. Anal Chem. 2014 Jul 15;86(14):6812-7. doi: 10.1021/ac501530d.  Epub 2014 Jun 26. PubMed PMID: 24927477.

Broeckling CD, Ganna A, Layer M, Brown K, Sutton B, Ingelsson E, Peers G, Prenni JE. Enabling Efficient and Confident Annotation of LC-MS Metabolomics Data through MS1 Spectrum and Time Prediction. Anal Chem. 2016 Sep 20;88(18):9226-34. doi: 10.1021/acs.analchem.6b02479. Epub 2016 Sep 8. PubMed PMID: 7560453.
}
\author{
Corey Broeckling
}
\concept{MSFinder}
\concept{RAMClustR}
\concept{clustering}
\concept{feature}
\concept{mass spectrometry}
\concept{metabolomics}
\concept{ramclustR}
\concept{xcms}
