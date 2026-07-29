import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure EvidenceLayer where
  banachPackage : BanachSpacePackage
  operatorAlgebraPackage : OperatorAlgebraPackage
  spectrumPackage : SpectrumPackage
  functionalCalculusPackage : ContinuousFunctionalCalculusPackage
  allClosed : BanachSpaceClosed banachPackage ∧ OperatorAlgebraClosed operatorAlgebraPackage ∧ SpectrumClosed spectrumPackage ∧ ContinuousFunctionalCalculusClosed functionalCalculusPackage

theorem evidence_layer_closed (E : EvidenceLayer) : E.allClosed := E.allClosed

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse