import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure SufficiencyPackage where
  sampleSpace : Type u
  sigmaAlgebra : Set (Set sampleSpace)
  familyOfDistributions : Type v
  sufficientStatistic : sampleSpace → Type w
  factorizationTheoremHolds : Prop
  exponentialFamilyForm : Prop
  factorizationTheoremHoldsTerm : factorizationTheoremHolds
  exponentialFamilyFormTerm : exponentialFamilyForm

structure SufficiencyEvidence (S : SufficiencyPackage) where
  factorizationTheoremClosed : S.factorizationTheoremHolds
  exponentialFamilyFormClosed : S.exponentialFamilyForm

def SufficiencyClosed (S : SufficiencyPackage) : Prop :=
  S.factorizationTheoremHolds ∧ S.exponentialFamilyForm

theorem sufficiency_closed_from_evidence (S : SufficiencyPackage) (E : SufficiencyEvidence S) :
    SufficiencyClosed S := by
  exact And.intro E.factorizationTheoremClosed E.exponentialFamilyFormClosed

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse