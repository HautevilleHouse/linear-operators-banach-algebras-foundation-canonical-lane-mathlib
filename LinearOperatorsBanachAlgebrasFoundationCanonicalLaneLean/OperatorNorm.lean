import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure OperatorNormPackage where
  normAxioms : Prop
  boundedLinearMap : Prop
  operatorNormEqualSup : Prop
  submultiplicative : Prop
  completeness : Prop

structure OperatorNormEvidence (O : OperatorNormPackage) where
  normAxiomsClosed : O.normAxioms
  boundedLinearMapClosed : O.boundedLinearMap
  operatorNormEqualSupClosed : O.operatorNormEqualSup
  submultiplicativeClosed : O.submultiplicative
  completenessClosed : O.completeness

def OperatorNormClosed (O : OperatorNormPackage) : Prop :=
  O.normAxioms ∧ O.boundedLinearMap ∧ O.operatorNormEqualSup ∧ O.submultiplicative ∧ O.completeness

theorem operator_norm_closed_from_evidence (O : OperatorNormPackage) (E : OperatorNormEvidence O) :
    OperatorNormClosed O := by
  exact And.intro E.normAxiomsClosed
    (And.intro E.boundedLinearMapClosed
      (And.intro E.operatorNormEqualSupClosed
        (And.intro E.submultiplicativeClosed E.completenessClosed)))

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse
