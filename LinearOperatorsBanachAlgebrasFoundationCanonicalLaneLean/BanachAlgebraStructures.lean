import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure BanachAlgebraClass (A : Type u) where
  norm : A → ℝ
  algebra : Algebra ℝ A
  mul : A → A → A
  norm_mul : ∀ (x y : A), norm (mul x y) ≤ norm x * norm y
  completeness : Prop

structure BanachAlgebraPackage where
  carrier : Type u
  banachAlgebraClass : BanachAlgebraClass carrier

structure BanachAlgebraEvidence (B : BanachAlgebraPackage) where
  norm_mul_closed : ∀ (x y : B.carrier), B.banachAlgebraClass.norm (B.banachAlgebraClass.mul x y) ≤ B.banachAlgebraClass.norm x * B.banachAlgebraClass.norm y
  completeness_closed : B.banachAlgebraClass.completeness

def BanachAlgebraClosed (B : BanachAlgebraPackage) : Prop :=
  (∀ (x y : B.carrier), B.banachAlgebraClass.norm (B.banachAlgebraClass.mul x y) ≤ B.banachAlgebraClass.norm x * B.banachAlgebraClass.norm y) ∧
  B.banachAlgebraClass.completeness

theorem banach_algebra_closed_from_evidence (B : BanachAlgebraPackage) (E : BanachAlgebraEvidence B) : BanachAlgebraClosed B :=
  And.intro E.norm_mul_closed E.completeness_closed

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse