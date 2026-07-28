import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalibrationsCalibratedGeometriesCanonicalLaneLean.CalibrationBridge
import HautevilleHouse.CalibrationsCalibratedGeometriesCanonicalLaneLean.CalibrationGate

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesCanonicalLaneLean

def ConstrainedCalibrationsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_calibrations_endgame (A : AdmissibleClass) :
    ConstrainedCalibrationsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalibrationsCalibratedGeometriesCanonicalLaneLean
end HautevilleHouse