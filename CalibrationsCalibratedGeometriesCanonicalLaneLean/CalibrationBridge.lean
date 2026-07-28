import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.calibrationClosed ∧ A.object.calibratedSubmanifold

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.conclusion.1 A.object.conclusion.2

end CalibrationsCalibratedGeometriesCanonicalLaneLean
end HautevilleHouse