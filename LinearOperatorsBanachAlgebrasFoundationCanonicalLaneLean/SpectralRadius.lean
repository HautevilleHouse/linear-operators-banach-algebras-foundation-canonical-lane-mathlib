import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure SpectralRadiusPackage where
  resolventDefined : Prop
  spectrumNonempty : Prop
  spectralRadiusFormula : Prop
  gel fandFormula : Prop
  spectralRadiusSubadditive : Prop

structure SpectralRadiusEvidence (S : SpectralRadiusPackage) where
  resolventDefinedClosed : S.resolventDefined
  spectrumNonemptyClosed : S.spectrumNonempty
  spectralRadiusFormulaClosed : S.spectralRadiusFormula
  gel fandFormulaClosed : S.gel fandFormula
  spectralRadiusSubadditiveClosed : S.spectralRadiusSubadditive

def SpectralRadiusClosed (S : SpectralRadiusPackage) : Prop :=
  S.resolventDefined ∧ S.spectrumNonempty ∧ S.spectralRadiusFormula ∧ S.gel fandFormula ∧ S.spectralRadiusSubadditive

theorem spectral_radius_closed_from_evidence (S : SpectralRadiusPackage) (E : SpectralRadiusEvidence S) :
    SpectralRadiusClosed S := by
  exact And.intro E.resolventDefinedClosed
    (And.intro E.spectrumNonemptyClosed
      (And.intro E.spectralRadiusFormulaClosed
        (And.intro E.gel fandFormulaClosed E.spectralRadiusSubadditiveClosed)))

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse
