import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure OperatorAlgebraPackage where
  space : Type u
  normedRing : NormedRing space
  complete : CompleteSpace space
  algebraOverℝ : Algebra ℝ space
  normMultiplicative : ∀ a b : space, ‖a * b‖ ≤ ‖a‖ * ‖b‖

def OperatorAlgebraClosed (O : OperatorAlgebraPackage) : Prop :=
  O.normMultiplicative ∧ O.normedRing.NormedRing

theorem operator_algebra_closed_from_package (O : OperatorAlgebraPackage) : OperatorAlgebraClosed O :=
  And.intro O.normMultiplicative (by infer_instance)

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse