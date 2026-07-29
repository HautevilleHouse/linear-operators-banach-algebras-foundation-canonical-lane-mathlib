import canonicalLaneMathlib.AdmissibleClass
import LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean.SpectralTheoryPackage

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure FunctionalCalculusPackage {B : BanachAlgebra} (S : SpectralTheoryPackage B) where
  continuousFunctionalCalculus : (B.object.carrier → ℂ) → B.object.carrier → B.object.carrier
  holomorphicFunctionalCalculus : (ℂ → ℂ) → B.object.carrier → B.object.carrier
  functionalCalculusProperties : Prop

structure FunctionalCalculusEvidence {B : BanachAlgebra} {S : SpectralTheoryPackage B} (F : FunctionalCalculusPackage S) where
  functionalCalculusPropertiesClosed : F.functionalCalculusProperties

def FunctionalCalculusClosed {B : BanachAlgebra} {S : SpectralTheoryPackage B} (F : FunctionalCalculusPackage S) : Prop :=
  F.functionalCalculusProperties

theorem functional_calculus_closed_from_evidence {B : BanachAlgebra} {S : SpectralTheoryPackage B} (F : FunctionalCalculusPackage S) (E : FunctionalCalculusEvidence F) : FunctionalCalculusClosed F := by
  exact E.functionalCalculusPropertiesClosed

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse