import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean.BanachAlgebraStructures

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure SpectralTheoremPackage (B : BanachAlgebraPackage) where
  inv : B.carrier → Prop
  spectralRadius : B.carrier → ℝ
  spectralTheorem : Prop
  spectralTheoremProof : spectralTheorem

structure SpectralEvidence {B : BanachAlgebraPackage} (S : SpectralTheoremPackage B) where
  spectralTheoremClosed : S.spectralTheorem

def SpectralClosed {B : BanachAlgebraPackage} (S : SpectralTheoremPackage B) : Prop :=
  S.spectralTheorem

theorem spectral_closed_from_evidence {B : BanachAlgebraPackage} (S : SpectralTheoremPackage B) (E : SpectralEvidence S) : SpectralClosed S :=
  E.spectralTheoremClosed

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse