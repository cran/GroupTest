\name{GroupTest-package}
\alias{GroupTest-package}
\alias{GroupTest}
\docType{package}
\title{
  Multiple Hypothesis Testing Procedure for the Grouped Hypotheses
}
\description{
  This package provides functions for the multiple hypotheses testing when
  there exists group structures. 
}
\details{
\tabular{ll}{
Package: \tab GroupTest\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-11-20\cr
License: \tab GPL-3\cr
}
  This package provides functions for multiple testing for the grouped
  hypotheses. The data is an array of list with G list where G is the
  total number of groups. Each list within this array corresponds to a
  group, with the test statistic and the group size as its two
  elements. Under the null hypotheses, the test statistic follows a
  standard normal distribution.
  
  The main function is GT.wrapper(). One example is provided
  under this function, explaining the data structure and how to use the package.
}
\author{
  Zhigen Zhao <zhaozhg@temple.edu>
  
  Maintainer: Zhigen Zhao <zhaozhg@temple.edu>
  
}
\references{
  Liu, Y., Sarkar, S. K., and Zhao, Z. (2015) A New Approach to
  Multiple Testing of Grouped
  Hypotheses
  
  He, L., Sarkar, S. K. and Zhao, Z. (2015) Capturing the severity of Type
  II errors in high-dimensional multiple testing. Journal of Multivariate
  Analysis. Vol. 142, 106-116. 

}
\keyword{ GroupTest }
% \seealso{
% }
% \examples{
% }
