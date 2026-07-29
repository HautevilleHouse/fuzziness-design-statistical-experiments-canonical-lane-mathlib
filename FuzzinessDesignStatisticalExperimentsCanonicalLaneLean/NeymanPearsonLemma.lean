import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure NeymanPearsonPackage where
  hypothesisTest : Type u
  simpleHypotheses : Prop
  likelihoodRatio : Type v
  mostPowerfulTestExists : Prop
  criticalRegionDefined : Prop
  mostPowerfulTestExistsTerm : mostPowerfulTestExists
  criticalRegionDefinedTerm : criticalRegionDefined

structure NeymanPearsonEvidence (N : NeymanPearsonPackage) where
  mostPowerfulTestClosed : N.mostPowerfulTestExists
  criticalRegionClosed : N.criticalRegionDefined

def NeymanPearsonClosed (N : NeymanPearsonPackage) : Prop :=
  N.mostPowerfulTestExists ∧ N.criticalRegionDefined

theorem neyman_pearson_closed_from_evidence (N : NeymanPearsonPackage) (E : NeymanPearsonEvidence N) :
    NeymanPearsonClosed N := by
  exact And.intro E.mostPowerfulTestClosed E.criticalRegionClosed

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse