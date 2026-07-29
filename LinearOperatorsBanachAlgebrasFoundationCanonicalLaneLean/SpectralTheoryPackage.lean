import canonicalLaneMathlib.AdmissibleClass
import LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean.BanachSpaceAdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure SpectralTheoryPackage (B : BanachAlgebra) where
  spectrum : B.object.carrier → Set ℂ
  resolvent : B.object.carrier → ℂ → B.object.carrier
  spectralRadiusFormula : Prop
  spectralMappingTheorem : Prop

structure SpectralTheoryEvidence {B : BanachAlgebra} (S : SpectralTheoryPackage B) where
  spectralRadiusFormulaClosed : S.spectralRadiusFormula
  spectralMappingTheoremClosed : S.spectralMappingTheorem

def SpectralTheoryClosed {B : BanachAlgebra} (S : SpectralTheoryPackage B) : Prop :=
  S.spectralRadiusFormula ∧ S.spectralMappingTheorem

theorem spectral_theory_closed_from_evidence {B : BanachAlgebra} (S : SpectralTheoryPackage B) (E : SpectralTheoryEvidence S) : SpectralTheoryClosed S := by
  exact And.intro E.spectralRadiusFormulaClosed E.spectralMappingTheoremClosed

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse