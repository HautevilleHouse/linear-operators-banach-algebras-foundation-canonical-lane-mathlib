import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  operatorClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse