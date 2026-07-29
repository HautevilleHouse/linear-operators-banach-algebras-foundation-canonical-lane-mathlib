import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  operatorClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse