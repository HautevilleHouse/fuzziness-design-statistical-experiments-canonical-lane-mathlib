import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure HypothesisTestingPackage where
  nullHypothesis : Prop
  alternativeHypothesis : Prop
  testStatistic : Type
  rejectionRegion : Type
  significanceLevel : Real
  pValue : Real
  typeIErrorControlled : Prop
  typeIIErrorControlled : Prop
  powerFunction : Prop

structure HypothesisTestingEvidence (H : HypothesisTestingPackage) where
  typeIErrorControlledClosed : H.typeIErrorControlled
  typeIIErrorControlledClosed : H.typeIIErrorControlled
  powerFunctionClosed : H.powerFunction

def HypothesisTestingClosed (H : HypothesisTestingPackage) : Prop :=
  H.typeIErrorControlled ∧ H.typeIIErrorControlled ∧ H.powerFunction

theorem hypothesis_testing_closed_from_evidence (H : HypothesisTestingPackage) (Ev : HypothesisTestingEvidence H) : HypothesisTestingClosed H :=
  And.intro Ev.typeIErrorControlledClosed (And.intro Ev.typeIIErrorControlledClosed Ev.powerFunctionClosed)

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse