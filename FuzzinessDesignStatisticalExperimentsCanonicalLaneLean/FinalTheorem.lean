import canonicalLaneMathlib.AdmissibleClass
import FuzzinessDesignStatisticalExperimentsCanonicalLaneLean.SufficiencyExponentialFamily
import FuzzinessDesignStatisticalExperimentsCanonicalLaneLean.NeymanPearsonLemma
import FuzzinessDesignStatisticalExperimentsCanonicalLaneLean.MLEConsistency

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := SufficiencyClosed A.object ∧ NeymanPearsonClosed A.object
def gateClosed (A : AdmissibleClass) : Prop := MLEConsistencyClosed A.object

def ConstrainedFuzzinessDesignClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fuzziness_design_endgame (A : AdmissibleClass) :
    ConstrainedFuzzinessDesignClosure A := by
  sorry

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse