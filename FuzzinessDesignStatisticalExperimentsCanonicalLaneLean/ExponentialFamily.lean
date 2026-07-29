import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure ExponentialFamilyPackage where
  sufficientStatistic : Type
  naturalParameter : Type
  logPartition : Type
  baseMeasure : Type
  densityExpressed : Prop
  canonicalForm : Prop
  sufficiencyClosed : Prop
  completenessClosed : Prop

structure ExponentialFamilyEvidence (E : ExponentialFamilyPackage) where
  densityExpressedClosed : E.densityExpressed
  canonicalFormClosed : E.canonicalForm
  sufficiencyClosed : E.sufficiencyClosed
  completenessClosed : E.completenessClosed

def ExponentialFamilyClosed (E : ExponentialFamilyPackage) : Prop :=
  E.densityExpressed ∧ E.canonicalForm ∧ E.sufficiencyClosed ∧ E.completenessClosed

theorem exponential_family_closed_from_evidence (E : ExponentialFamilyPackage) (Ev : ExponentialFamilyEvidence E) : ExponentialFamilyClosed E :=
  And.intro Ev.densityExpressedClosed (And.intro Ev.canonicalFormClosed (And.intro Ev.sufficiencyClosed Ev.completenessClosed))

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse