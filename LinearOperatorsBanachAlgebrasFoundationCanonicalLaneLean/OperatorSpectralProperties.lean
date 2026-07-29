import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure SpectralPackage where
  spectrum : Type u
  resolvent : Prop
  spectralRadius : ℝ
  compactness : Prop

def SpectralClosed (S : SpectralPackage) : Prop :=
  S.resolvent ∧ S.compactness

structure SpectralEvidence (S : SpectralPackage) where
  resolventClosed : S.resolvent
  compactnessClosed : S.compactness

theorem spectral_closed_from_evidence (S : SpectralPackage) (E : SpectralEvidence S) :
    SpectralClosed S := by
  exact And.intro E.resolventClosed E.compactnessClosed

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse