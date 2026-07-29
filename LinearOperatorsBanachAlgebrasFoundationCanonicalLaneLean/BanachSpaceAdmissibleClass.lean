import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure BanachSpace where
  carrier : Type u
  norm : carrier → ℝ
  normedAddCommGroup : NormedAddCommGroup carrier
  complete : CompleteSpace carrier

structure BanachAlgebra (X : BanachSpace) where
  multiplication : X.carrier → X.carrier → X.carrier
  algebraNorm : ℝ
  submultiplicative : ∀ a b : X.carrier, norm (multiplication a b) ≤ algebraNorm * X.norm a * X.norm b

structure AdmissibleClass where
  object : BanachAlgebra
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BanachAlgebraClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse