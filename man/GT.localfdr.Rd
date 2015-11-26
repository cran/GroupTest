\name{GT.localfdr}
\alias{GT.localfdr}
\title{
  Between and within group local fdr scores
}
\description{
  This function calculate the between-group and within-group
  local fdr scores for a given set of all the parameters.
}
\usage{
GT.localfdr(TestStatistic, pi1, pi2.1, L, muL, sigmaL, cL)
}
\arguments{
  \item{TestStatistic}{ An array of list. Each element of the array
    corresponds to one group, containing the test statistic, stored
    as X, and the group size, stored as mg.
  }
  \item{L}{ The number of Gaussian component under the alternative
    hypothesis.
  }
  \item{pi1}{ \eqn{\pi_1}, the probability that a group is significant.
  }
  \item{pi2.1}{ \eqn{\pi_{2|1}}, the probability that an individual
    null hypothesis is false given that the group is significant.
  }
  \item{muL}{ a vector of means for all the components of the
    Gaussian mixture. 
  }
  \item{sigmaL}{ a vector of standard deviation of all the
    components of the Gaussian mixture.
  }
  \item{cL}{ a vector of the probability for all the components of
    the Gaussian mixture.
  }
}
% \details{
% }
\value{
  This function returns an array of G lists where G is the number
  of groups.
  \item{TSGroupTest[[g]]}{ in each element, the individual
    conditional local fdr score (\eqn{ P(\theta_{gj}=0|x,
      \theta_{g}=1)}), the group-wise local fdr score
    (\eqn{P(\theta_g=0|x)}), are stored.
  }
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
GroupTest_simulate <- GT.localfdr( GroupTest_simulate, L=2, pi1=0.5,
    pi2.1=0.5, muL=c(-1, 1), sigmaL=c(1,2), cL=c(0.4,0.6) )
}
\keyword{ Local fdr }
