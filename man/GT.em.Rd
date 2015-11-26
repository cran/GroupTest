\name{GT.em}
\alias{GT.em}
\title{
  EM Algorithm
}
\description{
  This function estimates all the parameters using the EM algorithm. The
  iteration is termined when the sum of squared difference of the
  current updated values and the previous values of the parameters is
  less than DELTA. A list consisting of all the estimated values of the
  parameters is returned.
}
\usage{
GT.em(TestStatistic, pi1.ini, pi2.1.ini, L, muL.ini, sigmaL.ini, cL.ini,
DELTA, sigma.KNOWN)
}
\arguments{
  \item{TestStatistic}{ An array of list. Each list of the array
    corresponds to one group, containing the test statistic, stored as
    X, and the group size, stored as mg.
  }
  \item{L}{ The number of Gaussian component under the alternative
    hypothesis.
  }
  \item{pi1.ini}{ Initial value: the probability that a group is significant.
  }
  \item{pi2.1.ini}{ Initial value: the probability that an individual null hypothesis
    is false given that the group is significant.
  }
  \item{muL.ini}{ Initial value: a vector of means for all the components of the
    Gaussian mixture. 
  }
  \item{sigmaL.ini}{ Initial value: a vector of standard deviation of all the
    components of the Gaussian mixture.
  }
  \item{cL.ini}{ Initial value: a vector of the probability for all the
    components of the Gaussian mixture.
  }
  \item{DELTA}{ The criteria to stop the EM algorithm.
  }
  \item{sigma.KNOWN}{ The boolean variable, indicating whether the
    variance is known.}

}
% \details{
% }
\value{
   This function return a list, consisting of the estimated values of all
  the parameters. The variables within this list are shown as following:
  
  \item{pi1}{ estimated value of \eqn{\pi_1}, the proportion of a
    group being significant}
  \item{pi2.1}{ estimated value of \eqn{\pi_{2|1}}, the proportion of a
    null hypothesis being false within a significant group.}
  \item{muL}{a vector of estimated means for all the components of the
    Gaussian mixture}
  \item{sigmaL}{ a vector of estimated standard deviation of all the
    components of the Gaussian mixture}
  \item{cL}{a vector of the probability for all the components of the
    Gaussian mixture}
  \item{L}{ the number of components in the Gaussian mixture}
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
em.estimate <- GT.em( GroupTest_simulate, L=2, pi1.ini=0.7, pi2.1.ini=0.4,
muL.ini=c(-1,1), sigmaL.ini=c(1,2), cL.ini=c(0.4,0.6), DELTA=0.001,
sigma.KNOWN=FALSE )
}

\keyword{ AEM Algorithm }
