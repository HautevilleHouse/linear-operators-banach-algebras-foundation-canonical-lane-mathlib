import canonicalLaneMathlib.AdmissibleClass
import LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean.FunctionalCalculus

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure GelfandTheoryPackage {B : BanachAlgebra} {S : SpectralTheoryPackage B} {F : FunctionalCalculusPackage S} where
  gelfandTransform : B.object.carrier → (ℂ → ℂ)
  gelfandRepresentation : Prop
  gelfandNaimark : Prop

structure GelfandTheoryEvidence {B : BanachAlgebra} {S : SpectralTheoryPackage B} {F : FunctionalCalculusPackage S} (G : GelfandTheoryPackage F) where
  gelfandRepresentationClosed : G.gelfandRepresentation
  gelfandNaimarkClosed : G.gelfandNaimark

def GelfandTheoryClosed {B : BanachAlgebra} {S : SpectralTheoryPackage B} {F : FunctionalCalculusPackage S} (G : GelfandTheoryPackage F) : Prop :=
  G.gelfandRepresentation ∧ G.gelfandNaimark

theorem gelfand_theory_closed_from_evidence {B : BanachAlgebra} {S : SpectralTheoryPackage B} {F : FunctionalCalculusPackage S} (G : GelfandTheoryPackage F) (E : GelfandTheoryEvidence G) : GelfandTheoryClosed G := by
  exact And.intro E.gelfandRepresentationClosed E.gelfandNaimarkClosed

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse