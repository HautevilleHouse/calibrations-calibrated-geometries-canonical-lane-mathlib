import CalibrationsCalibratedGeometriesCanonicalLaneLean.CalibrationForm

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesCanonicalLaneLean

structure CalibratedSubmanifoldPackage (M : Type u) (C : CalibrationForm M) where
  submanifold : Type v
  immersion : Prop
  calibrationEquality : Prop
  volumeMinimizing : Prop
  calibratedCondition : Prop
  calibratedConditionClosed : calibratedCondition
  volumeMinimizingClosed : volumeMinimizing

structure CalibratedSubmanifoldEvidence (M : Type u) (C : CalibrationForm M)
    (S : CalibratedSubmanifoldPackage M C) where
  calibratedConditionChecked : S.calibratedCondition
  volumeMinimizingChecked : S.volumeMinimizing

def CalibratedSubmanifoldClosed (M : Type u) (C : CalibrationForm M)
    (S : CalibratedSubmanifoldPackage M C) : Prop :=
  S.calibratedCondition ∧ S.volumeMinimizing

theorem calibrated_submanifold_closed_from_evidence (M : Type u) (C : CalibrationForm M)
    (S : CalibratedSubmanifoldPackage M C) (E : CalibratedSubmanifoldEvidence M C S) :
    CalibratedSubmanifoldClosed M C S := by
  exact And.intro E.calibratedConditionChecked E.volumeMinimizingChecked

end CalibrationsCalibratedGeometriesCanonicalLaneLean
end HautevilleHouse