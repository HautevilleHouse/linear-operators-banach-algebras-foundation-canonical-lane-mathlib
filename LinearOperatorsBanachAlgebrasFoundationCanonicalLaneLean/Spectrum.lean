import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean.BanachAlgebraStructure

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure SpectrumPackage {N : OperatorNormsPackage} (B : BanachAlgebraStructure N) where
  element : N.linearOperator
  resolventSet : Set ℂ
  spectrum : Set ℂ := ℂ \ resolventSet
  resolventBound : Prop
  resolventBoundTerm : resolventBound
  spectralRadius : ℝ
  spectralRadiusFormula : spectralRadius = limsup (fun n : ℕ => (N.norm (B.multiplication element ^ n)) ^ (1 / (n : ℝ))) (by norm_num : ℕ → ℝ)
  spectralRadiusFormulaTerm : spectralRadiusFormula

structure SpectrumEvidence {N : OperatorNormsPackage} {B : BanachAlgebraStructure N} (S : SpectrumPackage B) where
  resolventBoundClosed : S.resolventBound
  spectralRadiusFormulaClosed : S.spectralRadiusFormula

def SpectrumClosed {N : OperatorNormsPackage} {B : BanachAlgebraStructure N} (S : SpectrumPackage B) : Prop :=
  S.resolventBound ∧ S.spectralRadiusFormula

theorem spectrum_closed_from_evidence {N : OperatorNormsPackage} {B : BanachAlgebraStructure N} (S : SpectrumPackage B) (E : SpectrumEvidence S) :
    SpectrumClosed S := by
  exact And.intro E.resolventBoundClosed E.spectralRadiusFormulaClosed

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse