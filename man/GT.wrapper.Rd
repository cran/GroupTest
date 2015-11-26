\name{GT.wrapper}
\alias{GT.wrapper}
\title{
  Multiple testing procedure for the grouped hypothesis
}
\description{
  This function is the main function to perform the two-stage testing
  for the grouped hypotheses.
}
\usage{
GT.wrapper(TestStatistic, alpha = 0.05, eta = alpha, pi1.ini = 0.7,
pi2.1.ini = 0.4, L = 2, muL.ini = c(-1, 1), sigmaL.ini = c(1, 1),
cL.ini = c(0.5, 0.5), DELTA = 0.001, sigma.KNOWN=FALSE)
}

\arguments{
  \item{TestStatistic}{ An array of list. Each list of the array
    corresponds to one group, containing the test statistic, stored
    as X, and the group size, stored as mg.
  }
  \item{alpha}{ the targeted FDR level. By default, it is chosen as 0.05.}
  \item{eta}{ the targeted FDR level within each group. The default and
    recommended choice is alpha. By default, it is chosen as \eqn{\alpha}.}
  \item{pi1.ini}{ Initial value: the probability that a group is
    significant. By default, it is chosen as 0.7
  }
  \item{pi2.1.ini}{ Initial value: the probability that an individual
    null hypothesis is false given that the group is significant. By
    default, it is chosen as 0.4.
  }
  \item{L}{ The number of Gaussian component under the alternative
    hypothesis. By default, it is chosen as 2.
  }
  \item{muL.ini}{ Initial value: a vector of means for all the
    components of the Gaussian mixture. By default, is is chosen as -1
    and 1.
  }
  \item{sigmaL.ini}{ Initial value: a vector of standard deviation of
    all the components of the Gaussian mixture. By default, it is chosen
  as 1 and 1.
  }
  \item{cL.ini}{ Initial value: a vector of the probability for all the
    components of the Gaussian mixture. By default, it is chosen as 50\% and 50\%.
  }
  \item{DELTA}{ The criteria to stop the EM algorithm. In this
    algorithm, we calcualte the maximum of absolution difference of the
    current estiamted value and its previous value for the
    parameters. By default, it is chosen as 0.0001.
  }
  \item{sigma.KNOWN}{ The boolean variable, indicating whether the
    variance is known. Be default, it is chosen as FALSE.}
  }
% \details{
% }
\value{
  The function returns a TSGroupTest object. It contains
  
  \item{parameter}{ this is a list, consisting of estimated parameters
    based on the EM algorithm. The elements are \eqn{\pi_1},
    \eqn{\pi_{2|1}}, \eqn{c_l}, \eqn{\mu_l}, \eqn{\sigma_l}.}
  
  \item{TSGroupTest[[g]]}{ all the quntities regarding the g-th group,
    including the test statistic within this group, the individual
    conditional local fdr score (\eqn{ P(\theta_{gj}=0|x,
      \theta_{g}=1)}), the group-wise local fdr score
    (\eqn{P(\theta_g=0|x)}), between-group decision, within-group decision}
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

GT.Test <- GT.wrapper( GroupTest_simulate, alpha=0.05, eta=alpha,
pi1.ini=0.7, pi2.1.ini=0.4, L=2, muL.ini=c(-1,1), sigmaL.ini=c(1,2),
cL.ini=c(0.4,0.6), DELTA=0.001, sigma.KNOWN=FALSE )

}
\keyword{ Wrapper }
