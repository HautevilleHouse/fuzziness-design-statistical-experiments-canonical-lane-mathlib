import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure MLEAsymptoticsStructure where
  parameterSpace : Type u
  logLikelihood : Type u → ℝ
  scoreFunction : Type u → Type v
  fisherInformation : Type u → Type v
  consistencyCondition : Prop
  asymptoticNormality : Prop
  efficiency : Prop

def MLEAsymptoticsClosed (M : MLEAsymptoticsStructure) : Prop :=
  M.consistencyCondition ∧ M.asymptoticNormality ∧ M.efficiency

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse
