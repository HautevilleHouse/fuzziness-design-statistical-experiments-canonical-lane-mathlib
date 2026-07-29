import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure AdmittedObject where
  experimentSpace : Type
  parameterDomain : Type
  decisionRule : Type
  riskFunction : Type
  admissibilityWitness : Prop
  inadmissibleAlternative : Prop
  conclusion : admissibilityWitness

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse