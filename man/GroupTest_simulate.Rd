\name{GroupTest_simulate}
\alias{GroupTest_simulate}
\docType{data}
\title{
  Simulated data set to demonstrate the package
%%   ~~ data name/kind ... ~~
}
\description{
    Simulated data set to demonstrate the package. In this data set,
    there are three groups. There are 3, 4, and 5 hypotheses
    respectively among the groups.
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("GroupTest_simulate")}
\format{
  An array of lists.
}
\examples{
data(GroupTest_simulate)

GT.test <- GT.wrapper( GroupTest_simulate, alpha=0.05, eta=alpha,
pi1.ini=0.7, pi2.1.ini=0.4, L=2, muL.ini=c(-1,1), sigmaL.ini=c(1,2),
cL.ini=c(0.4,0.6), DELTA=0.001, sigma.KNOWN=FALSE )

}
\keyword{Simulate Data}
