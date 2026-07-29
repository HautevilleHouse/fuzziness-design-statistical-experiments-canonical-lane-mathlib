import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure SufficiencyStructure where
  sampleSpace : Type u
  parameterSpace : Type v
  statistic : sampleSpace → Type w
  sufficiencyCriterion : Prop
  factorizationExists : Prop
  minimalSufficiency : Prop

def SufficiencyClosed (S : SufficiencyStructure) : Prop :=
  S.sufficiencyCriterion ∧ S.factorizationExists ∧ S.minimalSufficiency

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse
