import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure NeymanPearsonSetup where
  nullDistribution : Type u
  alternativeDistribution : Type v
  likelihoodRatio : Type u → Type v → ℝ
  criticalRegion : Type u → Type v → Prop
  significanceLevel : ℝ
  powerFunction : ℝ
  lemmaStatement : Prop

def NeymanPearsonClosed (N : NeymanPearsonSetup) : Prop :=
  N.lemmaStatement ∧ (N.powerFunction > N.significanceLevel)

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse
