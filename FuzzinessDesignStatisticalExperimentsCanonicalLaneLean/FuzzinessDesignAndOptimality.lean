import FuzzinessDesignStatisticalExperimentsCanonicalLaneLean.AsymptoticAndMLE

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure DesignPackage (A : AdmissibleClass) where
  designSpace : Type u
  optimalityCriterion : Prop
  allocationRule : Prop
  robusterror : Prop

structure FuzzinessDesignPackage {A : AdmissibleClass} (D : DesignPackage A) where
  fuzzyPartition : Type u
  assignmentProbabilities : Type v
  robustOptimality : Prop

structure FuzzinessDesignEvidence {A : AdmissibleClass} {D : DesignPackage A}
    (F : FuzzinessDesignPackage D) where
  robustOptimalityClosed : F.robustOptimality

def FuzzinessDesignClosed {A : AdmissibleClass} {D : DesignPackage A}
    (F : FuzzinessDesignPackage D) : Prop :=
  F.robustOptimality

theorem fuzziness_design_closed_from_evidence {A : AdmissibleClass} {D : DesignPackage A}
    (F : FuzzinessDesignPackage D) (E : FuzzinessDesignEvidence F) :
    FuzzinessDesignClosed F := by
  exact E.robustOptimalityClosed

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse