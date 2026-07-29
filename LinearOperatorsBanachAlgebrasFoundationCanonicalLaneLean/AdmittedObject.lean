import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure AdmittedObject where
  operatorSpace : Type u
  operatorAlgebra : Type v
  closedUnderNorm : Prop
  conclusion : closedUnderNorm

def operatorClosed (O : AdmittedObject) : Prop :=
  O.closedUnderNorm

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse