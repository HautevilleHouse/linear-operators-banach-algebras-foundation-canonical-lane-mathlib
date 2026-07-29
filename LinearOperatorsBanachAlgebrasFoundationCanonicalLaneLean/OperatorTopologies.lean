import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean.BanachAlgebraStructures

namespace HautevilleHouse
namespace LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean

structure OperatorTopologyPackage where
  weakTopology : Prop
  strongTopology : Prop
  ultraweakTopology : Prop
  wotClosed : weakTopology → Prop
  sotClosed : strongTopology → Prop
  uwotClosed : ultraweakTopology → Prop

structure OperatorTopologyEvidence (T : OperatorTopologyPackage) where
  wotClosedClosed : ∀ (h : T.weakTopology), T.wotClosed h
  sotClosedClosed : ∀ (h : T.strongTopology), T.sotClosed h
  uwotClosedClosed : ∀ (h : T.ultraweakTopology), T.uwotClosed h

def OperatorTopologyClosed (T : OperatorTopologyPackage) : Prop :=
  (∀ (h : T.weakTopology), T.wotClosed h) ∧ (∀ (h : T.strongTopology), T.sotClosed h) ∧ (∀ (h : T.ultraweakTopology), T.uwotClosed h)

theorem operator_topology_closed_from_evidence (T : OperatorTopologyPackage) (E : OperatorTopologyEvidence T) : OperatorTopologyClosed T :=
  And.intro E.wotClosedClosed (And.intro E.sotClosedClosed E.uwotClosedClosed)

end LinearOperatorsBanachAlgebrasFoundationCanonicalLaneLean
end HautevilleHouse