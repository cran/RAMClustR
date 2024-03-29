% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rc.feature.normalize.qc.R
\name{rc.feature.normalize.qc}
\alias{rc.feature.normalize.qc}
\title{rc.feature.normalize.qc}
\usage{
rc.feature.normalize.qc(
  ramclustObj = NULL,
  order = NULL,
  batch = NULL,
  qc = NULL,
  output.plot = FALSE,
  p.cut = 0.05,
  rsq.cut = 0.1,
  p.adjust = "none"
)
}
\arguments{
\item{ramclustObj}{ramclustObj containing MSdata with optional MSMSdata (MSe, DIA, idMSMS)}

\item{order}{integer vector with length equal to number of injections in xset or csv file}

\item{batch}{integer vector with length equal to number of injections in xset or csv file}

\item{qc}{logical vector with length equal to number of injections in xset or csv file or dataframe}

\item{output.plot}{logical: if TRUE (default), plots are output to PDF.}

\item{p.cut}{numeric when run order correction is applied, only features showing a run order vs signal with a linear p-value (after FDR correction) < p.cut will be adjusted.  also requires r-squared < rsq.cut.}

\item{rsq.cut}{numeric when run order correction is applied, only features showing a run order vs signal with a linear r-squared > rsq.cut will be adjusted. also requires p values < p.cut.}

\item{p.adjust}{which p-value adjustment should be used? default = "none", see ?p.adjust}
}
\value{
ramclustR object with normalized data.
}
\description{
extractor for xcms objects in preparation for clustering
}
\details{
This function offers normalization by run order, batch number, and QC sample signal intensity.

Each input vector should be the same length, and equal to the number of samples in the $MSdata set.

Input vector order is assumed to be the same as the sample order in the $MSdata set.
}
\references{
Broeckling CD, Afsar FA, Neumann S, Ben-Hur A, Prenni JE. RAMClust: a novel feature clustering method enables spectral-matching-based annotation for metabolomics data. Anal Chem. 2014 Jul 15;86(14):6812-7. doi: 10.1021/ac501530d.  Epub 2014 Jun 26. PubMed PMID: 24927477.
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
