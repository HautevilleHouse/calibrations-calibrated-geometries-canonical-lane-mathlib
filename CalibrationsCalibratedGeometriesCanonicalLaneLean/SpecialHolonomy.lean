import CalibrationsCalibratedGeometriesCanonicalLaneLean.CalibratedSubmanifold

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesCanonicalLaneLean

structure SpecialHolonomyPackage (M : Type u) where
  holonomyGroup : Type v
  kaehlerCalibration : Prop
  associativeCalibration : Prop
  coassociativeCalibration : Prop
  cayleyCalibration : Prop
  kaehlerCalibrationClosed : kaehlerCalibration
  associativeCalibrationClosed : associativeCalibration
  coassociativeCalibrationClosed : coassociativeCalibration
  cayleyCalibrationClosed : cayleyCalibration

structure SpecialHolonomyEvidence (M : Type u) (H : SpecialHolonomyPackage M) where
  kaehlerCalibrationChecked : H.kaehlerCalibration
  associativeCalibrationChecked : H.associativeCalibration
  coassociativeCalibrationChecked : H.coassociativeCalibration
  cayleyCalibrationChecked : H.cayleyCalibration

def SpecialHolonomyClosed (M : Type u) (H : SpecialHolonomyPackage M) : Prop :=
  H.kaehlerCalibration ∧ H.associativeCalibration ∧
  H.coassociativeCalibration ∧ H.cayleyCalibration

theorem special_holonomy_closed_from_evidence (M : Type u) (H : SpecialHolonomyPackage M)
    (E : SpecialHolonomyEvidence M H) : SpecialHolonomyClosed M H := by
  exact And.intro E.kaehlerCalibrationChecked
    (And.intro E.associativeCalibrationChecked
      (And.intro E.coassociativeCalibrationChecked E.cayleyCalibrationChecked))

end CalibrationsCalibratedGeometriesCanonicalLaneLean
end HautevilleHouse