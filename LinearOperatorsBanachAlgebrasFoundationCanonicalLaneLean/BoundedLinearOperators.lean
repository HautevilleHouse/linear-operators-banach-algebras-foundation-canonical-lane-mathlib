import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure BoundedLinearOperatorPackage where
  domain : Type u
  codomain : Type v
  operatorNorm : ℝ
  linearity : Prop
  boundedness : Prop

def BoundedLinearOperatorClosed (O : BoundedLinearOperatorPackage) : Prop :=
  O.linearity ∧ O.boundedness

structure BoundedLinearOperatorEvidence (O : BoundedLinearOperatorPackage) where
  linearityClosed : O.linearity
  boundednessClosed : O.boundedness

theorem bounded_linear_operator_closed_from_evidence (O : BoundedLinearOperatorPackage) (E : BoundedLinearOperatorEvidence O) :
    BoundedLinearOperatorClosed O := by
  exact And.intro E.linearityClosed E.boundednessClosed

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse