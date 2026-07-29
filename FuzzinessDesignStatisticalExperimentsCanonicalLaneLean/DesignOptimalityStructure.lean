import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure DesignOptimalityStructure where
  designSpace : Type u
  objectiveFunction : designSpace → ℝ
  optimalityCriterion : Prop
  AOptimal : Prop
  DOptimal : Prop
  EOptimal : Prop
  designConstruction : designSpace

def DesignOptimalityClosed (D : DesignOptimalityStructure) : Prop :=
  D.optimalityCriterion ∧ (D.AOptimal ∨ D.DOptimal ∨ D.EOptimal)

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse
