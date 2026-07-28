import CalibrationsCalibratedGeometriesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CalibrationsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CalibrationsCalibratedGeometriesCanonicalLaneLean
end HautevilleHouse