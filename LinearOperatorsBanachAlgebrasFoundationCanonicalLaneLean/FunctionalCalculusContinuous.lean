import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure ContinuousFunctionalCalculusPackage where
  algebra : Type u
  normedAlgebra : NormedAlgebra ℝ algebra
  complete : CompleteSpace algebra
  element : algebra
  continuousFunctions : Type v
  homomorphism : continuousFunctions →ₐ[ℝ] algebra
  spectralMapping : Prop
  homomorphismBounded : Prop

def ContinuousFunctionalCalculusClosed (C : ContinuousFunctionalCalculusPackage) : Prop :=
  C.spectralMapping ∧ C.homomorphismBounded

theorem continuous_functional_calculus_closed_from_package (C : ContinuousFunctionalCalculusPackage) (h_map : C.spectralMapping) (h_bound : C.homomorphismBounded) : ContinuousFunctionalCalculusClosed C :=
  And.intro h_map h_bound

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse