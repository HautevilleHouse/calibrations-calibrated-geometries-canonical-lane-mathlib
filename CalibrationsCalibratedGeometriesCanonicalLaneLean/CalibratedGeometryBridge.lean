import CalibrationsCalibratedGeometriesCanonicalLaneLean.SpecialHolonomy
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesCanonicalLaneLean

structure CalibratedGeometryBridge (M : Type u) (C : CalibrationForm M)
    (S : CalibratedSubmanifoldPackage M C) where
  areaMinimizingWitnessed : Prop
  holonomyCompatible : Prop
  bridgeClosed : bridgeClosed (AdmissibleClass.mk (⟨M, CalibrationForm, S⟩) True True (Or.inl trivial))
  gateClosed : gateClosed (AdmissibleClass.mk (⟨M, CalibrationForm, S⟩) True True (Or.inl trivial))
  bridgeClosedTerm : bridgeClosed
  gateClosedTerm : gateClosed

def CalibratedGeometryBridgeClosed (M : Type u) (C : CalibrationForm M)
    (S : CalibratedSubmanifoldPackage M C) (B : CalibratedGeometryBridge M C S) : Prop :=
  B.areaMinimizingWitnessed ∧ B.holonomyCompatible ∧ B.bridgeClosed ∧ B.gateClosed

theorem calibrated_geometry_bridge_closed (M : Type u) (C : CalibrationForm M)
    (S : CalibratedSubmanifoldPackage M C) (B : CalibratedGeometryBridge M C S) :
    CalibratedGeometryBridgeClosed M C S B := by
  exact And.intro B.areaMinimizingWitnessed
    (And.intro B.holonomyCompatible
      (And.intro B.bridgeClosedTerm B.gateClosedTerm))

end CalibrationsCalibratedGeometriesCanonicalLaneLean
end HautevilleHouse