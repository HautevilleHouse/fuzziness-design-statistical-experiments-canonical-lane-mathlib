import FuzzinessDesignStatisticalExperimentsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure SufficiencyPackage (A : AdmissibleClass) where
  sufficientStatistic : Type u
  factorizationTheorem : Prop
  minimalSufficiency : Prop
  completeSufficiency : Prop

structure ExponentialFamilyPackage (A : AdmissibleClass) where
  canonicalParameter : Type u
  sufficientStatisticType : Type v
  logPartition : Type w
  baseMeasure : Prop
  exponentialForm : Prop
  momentGeneratingExplicit : Prop

structure SufficiencyEvidence {A : AdmissibleClass} (S : SufficiencyPackage A) where
  factorizationTheoremClosed : S.factorizationTheorem
  minimalSufficiencyClosed : S.minimalSufficiency
  completeSufficiencyClosed : S.completeSufficiency

structure ExponentialFamilyEvidence {A : AdmissibleClass} (E : ExponentialFamilyPackage A) where
  exponentialFormClosed : E.exponentialForm
  momentGeneratingExplicitClosed : E.momentGeneratingExplicit

def SufficiencyClosed {A : AdmissibleClass} (S : SufficiencyPackage A) : Prop :=
  S.factorizationTheorem ∧ S.minimalSufficiency ∧ S.completeSufficiency

def ExponentialFamilyClosed {A : AdmissibleClass} (E : ExponentialFamilyPackage A) : Prop :=
  E.exponentialForm ∧ E.momentGeneratingExplicit

theorem sufficiency_closed_from_evidence {A : AdmissibleClass} (S : SufficiencyPackage A)
    (E : SufficiencyEvidence S) : SufficiencyClosed S := by
  exact And.intro E.factorizationTheoremClosed (And.intro E.minimalSufficiencyClosed E.completeSufficiencyClosed)

theorem exponential_family_closed_from_evidence {A : AdmissibleClass} (E : ExponentialFamilyPackage A)
    (Ev : ExponentialFamilyEvidence E) : ExponentialFamilyClosed E := by
  exact And.intro Ev.exponentialFormClosed Ev.momentGeneratingExplicitClosed

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse