% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/write.msp.R
\name{write.msp}
\alias{write.msp}
\title{write.msp}
\usage{
write.msp(ramclustObj = NULL, one.file = FALSE)
}
\arguments{
\item{ramclustObj}{ramclustR object to annotate.}

\item{one.file}{logical, should all msp spectra be written to one file? If false, each spectrum is an individual file.}
}
\value{
nothing, just exports files to the working directory
}
\description{
Cluster annotation function: inference of 'M' - molecular weight of the compound giving rise to each spectrum - using the InterpretMSSpectrum::findMain function
}
\details{
exports files to a directory called 'spectra'.  If one.file = FALSE, a new directory 'spectra/msp' is created to hold the individual msp files. if do.findman has been run, spectra are written as ms2 spectra, else as ms1.
}
\author{
Corey Broeckling
}
\concept{RAMClustR}
\concept{clustering}
\concept{interpretMSSpectrum}
\concept{mass spectrometry}
\concept{metabolomics}
\concept{ramclustR}
\concept{xcms}
