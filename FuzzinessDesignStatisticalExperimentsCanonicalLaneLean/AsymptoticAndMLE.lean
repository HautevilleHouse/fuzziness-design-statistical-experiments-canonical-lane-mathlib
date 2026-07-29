import FuzzinessDesignStatisticalExperimentsCanonicalLaneLean.NeymanPearsonAndTesting

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure AsymptoticPackage (A : AdmissibleClass) where
  sampleSize : ℕ
  consistencyType : Prop
  asymptoticNormality : Prop
  efficiencyBound : Prop

structure MLEPackage {A : AdmissibleClass} (As : AsymptoticPackage A) where
  likelihoodFunction : Type u
  mleEstimator : Type v
  consistency : Prop
  asymptoticNormality : Prop
  efficiency : Prop

structure MLEEvidence {A : AdmissibleClass} {As : AsymptoticPackage A}
    (M : MLEPackage As) where
  consistencyClosed : M.consistency
  asymptoticNormalityClosed : M.asymptoticNormality
  efficiencyClosed : M.efficiency

def MLEClosed {A : AdmissibleClass} {As : AsymptoticPackage A} (M : MLEPackage As) : Prop :=
  M.consistency ∧ M.asymptoticNormality ∧ M.efficiency

theorem mle_closed_from_evidence {A : AdmissibleClass} {As : AsymptoticPackage A}
    (M : MLEPackage As) (E : MLEEvidence M) : MLEClosed M := by
  exact And.intro E.consistencyClosed (And.intro E.asymptoticNormalityClosed E.efficiencyClosed)

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse