import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure OperatorNormsPackage where
  linearOperator : Type u
  norm : linearOperator → ℝ
  subadditivity : ∀ (x y : linearOperator), norm (x + y) ≤ norm x + norm y
  homogeneous : ∀ (a : ℝ) (x : linearOperator), norm (a • x) = |a| * norm x
  nonnegative : ∀ (x : linearOperator), norm x ≥ 0
  positiveDefinite : ∀ (x : linearOperator), norm x = 0 → x = 0
  complete : Prop
  completeTerm : complete

structure OperatorNormsEvidence (N : OperatorNormsPackage) where
  subadditivityClosed : N.subadditivity
  homogeneousClosed : N.homogeneous
  nonnegativeClosed : N.nonnegative
  positiveDefiniteClosed : N.positiveDefinite

def OperatorNormsClosed (N : OperatorNormsPackage) : Prop :=
  N.subadditivity ∧ N.homogeneous ∧ N.nonnegative ∧ N.positiveDefinite ∧ N.complete

theorem operator_norms_closed_from_evidence (N : OperatorNormsPackage) (E : OperatorNormsEvidence N) :
    OperatorNormsClosed N := by
  exact And.intro E.subadditivityClosed (And.intro E.homogeneousClosed (And.intro E.nonnegativeClosed (And.intro E.positiveDefiniteClosed N.completeTerm)))

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse