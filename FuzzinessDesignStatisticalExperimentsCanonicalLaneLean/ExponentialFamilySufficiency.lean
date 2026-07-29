import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure ExponentialFamily (X : Type) where
  sufficientStatistic : Type
  naturalParameter : Type
  baseMeasure : X → ℝ
  logPartition : ℝ
  density : X → ℝ
  sufficiencyClosed : Prop
  baseMeasureIntegrable : baseMeasureIntegrable
  logPartitionFinite : logPartitionFinite

def ExponentialFamilyAdmissible (E : ExponentialFamily X) : Prop :=
  E.sufficiencyClosed ∧ E.baseMeasureIntegrable ∧ E.logPartitionFinite

theorem exponential_family_admissible_sufficiency (E : ExponentialFamily X) :
    ExponentialFamilyAdmissible E := by
  exact And.intro E.sufficiencyClosed (And.intro E.baseMeasureIntegrable E.logPartitionFinite)

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse