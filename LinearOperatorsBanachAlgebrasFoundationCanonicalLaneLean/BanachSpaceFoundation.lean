import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure BanachSpacePackage where
  space : Type u
  norm : space → ℝ
  normedAddCommGroup : NormedAddCommGroup space
  complete : CompleteSpace space
  normSatisfies : ∀ x : space, 0 ≤ norm x ∧ (norm x = 0 ↔ x = 0) ∧ ∀ a : ℝ, norm (a • x) = |a| * norm x ∧ ∀ y : space, norm (x + y) ≤ norm x + norm y

def BanachSpaceClosed (B : BanachSpacePackage) : Prop :=
  B.normSatisfied

theorem banach_space_closed_from_package (B : BanachSpacePackage) : BanachSpaceClosed B := B.normSatisfied

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse