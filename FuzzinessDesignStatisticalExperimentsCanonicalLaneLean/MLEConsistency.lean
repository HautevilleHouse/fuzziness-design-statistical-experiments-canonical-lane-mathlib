import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure MLEConsistencyPackage where
  parameterSpace : Type u
  likelihoodFunction : Type v
  maximumLikelihoodEstimator : Type w
  consistencyConditions : Prop
  asymptoticNormality : Prop
  consistencyConditionsTerm : consistencyConditions
  asymptoticNormalityTerm : asymptoticNormality

structure MLEConsistencyEvidence (M : MLEConsistencyPackage) where
  consistencyClosed : M.consistencyConditions
  asymptoticNormalityClosed : M.asymptoticNormality

def MLEConsistencyClosed (M : MLEConsistencyPackage) : Prop :=
  M.consistencyConditions ∧ M.asymptoticNormality

theorem mle_consistency_closed_from_evidence (M : MLEConsistencyPackage) (E : MLEConsistencyEvidence M) :
    MLEConsistencyClosed M := by
  exact And.intro E.consistencyClosed E.asymptoticNormalityClosed

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse