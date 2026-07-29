import canonicalLaneMathlib.AdmissibleClass
import LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean.BanachSpaceAdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

def BanachAlgebraClosed (B : BanachAlgebra) : Prop :=
  ∃ (unit : B.object.carrier), (∀ a : B.object.carrier, B.multiplication a unit = a) ∧ (∀ a : B.object.carrier, B.multiplication unit a = a)

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BanachAlgebraClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- Since A.object is a BanachAlgebra with submultiplicative norm, we can construct unit
  sorry

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse