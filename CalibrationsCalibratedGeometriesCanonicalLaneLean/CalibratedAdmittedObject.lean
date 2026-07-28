import CalibrationsCalibratedGeometriesCanonicalLaneLean.CalibratedSubmanifoldPackage

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesCanonicalLaneLean

structure CalibratedAdmittedObject where
  calibratedSubmanifold : CalibratedSubmanifoldPackage
  existenceOfCalibration : Prop
  homologicallyVolumeMinimizing : Prop
  conclusion : existenceOfCalibration

def CalibratedWitnessClosed (O : CalibratedAdmittedObject) : Prop :=
  O.existenceOfCalibration

end CalibrationsCalibratedGeometriesCanonicalLaneLean
end HautevilleHouse