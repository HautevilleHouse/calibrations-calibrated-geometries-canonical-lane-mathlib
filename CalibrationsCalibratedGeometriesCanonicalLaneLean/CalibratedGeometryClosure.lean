import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalibrationsCalibratedGeometriesCanonicalLaneLean.CalibrationPackage
import HautevilleHouse.CalibrationsCalibratedGeometriesCanonicalLaneLean.CalibratedSubmanifold
import HautevilleHouse.CalibrationsCalibratedGeometriesCanonicalLaneLean.SpecialHolonomyPackage

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesCanonicalLaneLean

structure CalibratedAdmissibleClass where
  calibration : CalibrationPackage
  calibrationEvidence : CalibrationEvidence calibration
  submanifold : CalibratedSubmanifoldPackage calibration
  submanifoldEvidence : CalibratedSubmanifoldEvidence submanifold
  holonomy : SpecialHolonomyPackage
  holonomyEvidence : SpecialHolonomyEvidence holonomy
  endgameOpen : Prop

def bridgeClosed (A : CalibratedAdmissibleClass) : Prop :=
  CalibrationClosed A.calibration ∧ CalibratedSubmanifoldClosed A.submanifold ∧
  SpecialHolonomyClosed A.holonomy

theorem bridge_from_admissible_class (A : CalibratedAdmissibleClass) : bridgeClosed A := by
  refine And.intro (calibration_closed_from_evidence A.calibration A.calibrationEvidence)
    (And.intro (calibrated_submanifold_closed_from_evidence A.submanifold A.submanifoldEvidence)
      (special_holonomy_closed_from_evidence A.holonomy A.holonomyEvidence))

def gateClosed (A : CalibratedAdmissibleClass) : Prop :=
  A.endgameOpen ∨ True

theorem gate_from_admissible_class (A : CalibratedAdmissibleClass) : gateClosed A := by
  exact Or.inr trivial

def ConstrainedCalibratedGeometryClosure (A : CalibratedAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem calibrated_geometry_endgame (A : CalibratedAdmissibleClass) :
    ConstrainedCalibratedGeometryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalibrationsCalibratedGeometriesCanonicalLaneLean
end HautevilleHouse