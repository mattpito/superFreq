% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cohortAnalyseBatch.R
\name{superCohort}
\alias{superCohort}
\title{looks for reccuring events across all individuals in a batch run}
\usage{
superCohort(
  metaDataFile,
  Rdirectory,
  plotDirectory,
  genome,
  cpus = 1,
  resourceDirectory = "superFreqResources",
  excludeIndividuals = c(),
  excludeSamples = c(),
  ...
)
}
\arguments{
\item{metaDataFile}{character: path to the tab separated meta data file.}

\item{Rdirectory}{character: path to the Rdirectory of the batch run.}

\item{plotDirectory}{character: path to the plotDirectory of the batch run.}

\item{genome}{character: The genome build. 'hg19', hg38' or 'mm10'. Default 'hg19'}

\item{cpus}{integer: maximum number of threads used. default 1.}

\item{resourceDirectory}{character: path to the superFreq resources. Default 'superFreqResources'.}

\item{...:}{Remaing argument are passed to superFreq::cohortAnalyseBatch()}
}
\description{
looks for reccuring events across all individuals in a batch run
}
\details{
This function merges the data from multiple batches, setting them up for a joint cohort analysis. Note that this is only for the purpose of a downstream cohort analysis. The output R directory cannot be run as a batch Rdirectory.
}
\examples{
\dontrun{
superFreq(metaDataFile=metaDataFile,
          Rdirectory=Rdirectory,
          plotDirectory=plotDirectory,
          cpus=cpus,
          genome=genome)

#The resource directory defaults to the same in superFreq() and superCohort()
#so do not need to be specified.
superCohort(metaDataFile=metaDataFile,
          Rdirectory=Rdirectory,
          plotDirectory=plotDirectory,
          cpus=cpus,
          genome=genome)

}
}
