\name{AYP}
\alias{AYP}
\docType{data}
\title{ AYP of California, 2013
}
\description{
  This data set is adequate yearly progress (AYP) study of California
  elementary schools in 2013 comparing the academic performance for
  socioeconomically advantaged (SEA) against socioeconomically
  disadvantaged (SED) students in the elementary schools. 
  What is compared are the success rates of SEA students and SED
  students. The z-test statistic based two sample proportions test is
  cacluated for each schools. After removing schools with extremely
  small or large z-values, there are 4118 schools within 701 qualified
  school districts.
}
\usage{data("AYP")}
\format{
  An array of lists.
}
\details{
  AYP data set is an array of lists, with each list corresponding to one
  school district. In each list, three variables are stored:

  X: the test statistic for each individual schools within this
  school district.
  
  md:  the number of schools within this school district.
  
  School.District: the name of the school district.
}
\source{
  \url{http://www.cde.ca.gov/ta/ac/ay/aypdatafiles.asp}
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
  Liu, Y., Sarkar, S. K., and Zhao, Z. (2015) A New Approach to
  Multiple Testing of Grouped
  Hypotheses

  Efron, B. (2008) Microarrays, empirical bayes and the two-groups
  model. Statisitcal Science, 23, 1-22.
}
\examples{
data(AYP)

AYP.result <- GT.wrapper( AYP, alpha=0.1, eta=alpha, pi1.ini=0.5,
pi2.1.ini=0.05, L=2, muL.ini=c(3,-2), sigmaL.ini=c(1,1),
cL.ini=c(0.5,0.5), DELTA=0.0001, sigma.KNOWN=TRUE )
}
\keyword{AYP}
