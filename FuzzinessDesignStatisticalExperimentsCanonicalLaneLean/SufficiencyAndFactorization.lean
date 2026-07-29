import FuzzinessDesignStatisticalExperimentsCanonicalLaneLean.ExponentialFamily

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure SufficiencyPackage (Ω σ : Type) (S : SufficientStatistic Ω σ) where
  factorizationTheorem : Prop
  conditionalDistribution : Prop
  NeymanCriterion : Prop
  LehmannScheffé : Prop
  minimalSufficient : Prop

structure SufficiencyEvidence (Ω σ : Type) (S : SufficientStatistic Ω σ) (P : SufficiencyPackage Ω σ S) where
  factorizationTheoremClosed : P.factorizationTheorem
  NeymanCriterionClosed : P.NeymanCriterion
  LehmannSchefféClosed : P.LehmannScheffé
  minimalSufficientClosed : P.minimalSufficient

def SufficiencyClosed (Ω σ : Type) (S : SufficientStatistic Ω σ) (P : SufficiencyPackage Ω σ S) : Prop :=
  P.factorizationTheorem ∧ P.NeymanCriterion ∧ P.LehmannScheffé ∧ P.minimalSufficient

theorem sufficiency_closed_from_evidence (Ω σ : Type) (S : SufficientStatistic Ω σ) (P : SufficiencyPackage Ω σ S) (Ev : SufficiencyEvidence Ω σ S P) :
    SufficiencyClosed Ω σ S P := by
  exact And.intro Ev.factorizationTheoremClosed (And.intro Ev.NeymanCriterionClosed (And.intro Ev.LehmannSchefféClosed Ev.minimalSufficientClosed))

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse