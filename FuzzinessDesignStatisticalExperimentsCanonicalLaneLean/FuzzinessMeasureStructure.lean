import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure FuzzinessMeasureStructure where
  sampleSpace : Type u
  fuzzinessFunction : sampleSpace → ℝ
  membershipFunction : sampleSpace → ℝ
  fuzzinessAxioms : Prop
  entropyMeasure : ℝ
  defuzzificationMethod : sampleSpace → Type v

def FuzzinessMeasureClosed (F : FuzzinessMeasureStructure) : Prop :=
  F.fuzzinessAxioms ∧ (F.entropyMeasure ≥ 0)

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse
