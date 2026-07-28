import CalibrationsCalibratedGeometriesCanonicalLaneLean.CalibrationForms

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesCanonicalLaneLean

structure CalibratedSubmanifoldPackage where
  calibrationForm : CalibrationFormPackage
  submanifold : Type v
  immersion : Type w
  orientationConsistent : Prop
  volumeMinimizingInHomology : Prop

structure CalibratedSubmanifoldEvidence (S : CalibratedSubmanifoldPackage) where
  orientationConsistentClosed : S.orientationConsistent
  volumeMinimizingInHomologyClosed : S.volumeMinimizingInHomology

def CalibratedSubmanifoldClosed (S : CalibratedSubmanifoldPackage) : Prop :=
  S.orientationConsistent ∧ S.volumeMinimizingInHomology

theorem calibrated_submanifold_closed_from_evidence (S : CalibratedSubmanifoldPackage) (E : CalibratedSubmanifoldEvidence S) : CalibratedSubmanifoldClosed S :=
  And.intro E.orientationConsistentClosed E.volumeMinimizingInHomologyClosed

end CalibrationsCalibratedGeometriesCanonicalLaneLean
end HautevilleHouse