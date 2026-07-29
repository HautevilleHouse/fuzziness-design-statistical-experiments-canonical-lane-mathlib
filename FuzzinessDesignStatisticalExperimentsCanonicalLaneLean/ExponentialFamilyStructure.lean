import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure ExponentialFamilyStructure where
  sampleSpace : Type u
  naturalParameterSpace : Type v
  sufficientStatistic : sampleSpace → Type w
  logPartitionFunction : Type u → ℝ
  canonicalForm : Prop
  regularityConditions : Prop
  momentsExist : Prop

def ExponentialFamilyClosed (E : ExponentialFamilyStructure) : Prop :=
  E.canonicalForm ∧ E.regularityConditions ∧ E.momentsExist

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse
