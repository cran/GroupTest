\name{GT.decision}
\alias{GT.decision}
\title{
  Between- and within-group decisions
}
\description{
  Based on the \eqn{\alpha}-level and the the local fdr scores, this
  function provides the decision on between- and within-group levels.
}
\usage{
GT.decision(TestStatistic, alpha = 0.05, eta = alpha)
}
\arguments{
  \item{TestStatistic}{ An array of list. Each list of the array
    corresponds to one group, containing the test statistic, stored as
    X, and the group size, stored as mg. }
  \item{alpha}{ the targeted FDR level.}
  \item{eta}{ the targeted FDR level within each group. The default and
    recommended choice is alpha.}  
}
% \details{
% }
\value{
  \item{TestStatistic}{ An array of list. Each list of the array
    corresponds to one group, two additional varialbes: within.group.rej
    and between.group.rej are stored in each list.}
}
% \references{
% }
% \author{
% }
% \note{
% }

% \seealso{
% }
\examples{

data(GroupTest_simulate)
GroupTest_simulate <- GT.localfdr( GroupTest_simulate, L=2, pi1=0.5, pi2.1=0.5,
muL=c(-1, 1), sigmaL=c(1,2), cL=c(0.4,0.6) )

GroupTest.decision <- GT.decision(GroupTest_simulate, alpha=0.05)
}
\keyword{ Decision }
