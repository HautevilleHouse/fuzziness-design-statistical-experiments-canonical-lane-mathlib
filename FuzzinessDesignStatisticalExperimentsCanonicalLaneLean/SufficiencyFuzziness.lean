import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure SufficientStatistic (X : Type) where
  statistic : X → ℝ
  condition : Prop
  factorization : Prop
  minimal : Prop
  fuzzinessClosed : Prop

def SufficiencyFuzzinessClosed (S : SufficientStatistic X) : Prop :=
  S.condition ∧ S.factorization ∧ S.fuzzinessClosed

theorem sufficiency_fuzziness_closed (S : SufficientStatistic X) :
    SufficiencyFuzzinessClosed S := by
  exact And.intro S.condition (And.intro S.factorization S.fuzzinessClosed)

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse