import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure SufficiencyCompletenessPackage where
  sampleSpace : Type
  parameterSpace : Type
  sufficientStatistic : Type
  completeStatistic : Type
  factorizationCriterion : Prop
  ancillarity : Prop
  minimalSufficiency : Prop
  completenessClosed : Prop

structure SufficiencyCompletenessEvidence (S : SufficiencyCompletenessPackage) where
  factorizationCriterionClosed : S.factorizationCriterion
  ancillarityClosed : S.ancillarity
  minimalSufficiencyClosed : S.minimalSufficiency
  completenessClosed : S.completenessClosed

def SufficiencyCompletenessClosed (S : SufficiencyCompletenessPackage) : Prop :=
  S.factorizationCriterion ∧ S.ancillarity ∧ S.minimalSufficiency ∧ S.completenessClosed

theorem sufficiency_completeness_closed_from_evidence (S : SufficiencyCompletenessPackage) (Ev : SufficiencyCompletenessEvidence S) : SufficiencyCompletenessClosed S :=
  And.intro Ev.factorizationCriterionClosed (And.intro Ev.ancillarityClosed (And.intro Ev.minimalSufficiencyClosed Ev.completenessClosed))

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse