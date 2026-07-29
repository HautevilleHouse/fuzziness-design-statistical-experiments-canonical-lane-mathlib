import FuzzinessDesignStatisticalExperimentsCanonicalLaneLean.SufficiencyAndExponentialFamilies

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure HypothesisTestingPackage (A : AdmissibleClass) where
  nullHypothesis : Prop
  alternativeHypothesis : Prop
  testFunction : Type u
  sizeLevel : ℝ
  powerFn : Type v

structure NeymanPearsonLemmaPackage {A : AdmissibleClass} (H : HypothesisTestingPackage A) where
  likelihoodRatio : Type u
  mostPowerfulTest : Prop
  criticalRegion : Prop
  fundamentalLemma : Prop

structure NeymanPearsonEvidence {A : AdmissibleClass} {H : HypothesisTestingPackage A}
    (N : NeymanPearsonLemmaPackage H) where
  mostPowerfulTestClosed : N.mostPowerfulTest
  fundamentalLemmaClosed : N.fundamentalLemma

def NeymanPearsonClosed {A : AdmissibleClass} {H : HypothesisTestingPackage A}
    (N : NeymanPearsonLemmaPackage H) : Prop :=
  N.mostPowerfulTest ∧ N.fundamentalLemma

theorem neyman_pearson_closed_from_evidence {A : AdmissibleClass} {H : HypothesisTestingPackage A}
    (N : NeymanPearsonLemmaPackage H) (E : NeymanPearsonEvidence N) :
    NeymanPearsonClosed N := by
  exact And.intro E.mostPowerfulTestClosed E.fundamentalLemmaClosed

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse