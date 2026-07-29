import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure BanachAlgebraStructure where
  associativeMultiplication : Prop
  distributive : Prop
  scalarMultiplication : Prop
  submultiplicativeNorm : Prop
  unitElement : Prop

structure BanachAlgebraEvidence (B : BanachAlgebraStructure) where
  associativeMultiplicationClosed : B.associativeMultiplication
  distributiveClosed : B.distributive
  scalarMultiplicationClosed : B.scalarMultiplication
  submultiplicativeNormClosed : B.submultiplicativeNorm
  unitElementClosed : B.unitElement

def BanachAlgebraStructureClosed (B : BanachAlgebraStructure) : Prop :=
  B.associativeMultiplication ∧ B.distributive ∧ B.scalarMultiplication ∧ B.submultiplicativeNorm ∧ B.unitElement

theorem banach_algebra_structure_closed_from_evidence (B : BanachAlgebraStructure) (E : BanachAlgebraEvidence B) :
    BanachAlgebraStructureClosed B := by
  exact And.intro E.associativeMultiplicationClosed
    (And.intro E.distributiveClosed
      (And.intro E.scalarMultiplicationClosed
        (And.intro E.submultiplicativeNormClosed E.unitElementClosed)))

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse
