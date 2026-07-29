import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure SpectrumPackage where
  algebra : Type u
  normedAlgebra : NormedAlgebra ℝ algebra
  complete : CompleteSpace algebra
  element : algebra
  spectrumNonempty : Prop
  spectralRadiusFormula : Prop

def SpectrumClosed (S : SpectrumPackage) : Prop :=
  S.spectrumNonempty ∧ S.spectralRadiusFormula

theorem spectrum_closed_from_package (S : SpectrumPackage) (h_nonempty : S.spectrumNonempty) (h_radius : S.spectralRadiusFormula) : SpectrumClosed S :=
  And.intro h_nonempty h_radius

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse