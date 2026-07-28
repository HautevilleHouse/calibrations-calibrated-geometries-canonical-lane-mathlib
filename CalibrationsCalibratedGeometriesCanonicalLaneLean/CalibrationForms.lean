import CalibrationsCalibratedGeometriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesCanonicalLaneLean

structure CalibrationFormPackage where
  manifold : Type u
  dimension : Nat
  formDegree : Nat
  calibrationCondition : Prop
  closednessCondition : Prop
  comassCondition : Prop

structure CalibrationFormEvidence (C : CalibrationFormPackage) where
  calibrationConditionClosed : C.calibrationCondition
  closednessConditionClosed : C.closednessCondition
  comassConditionClosed : C.comassCondition

def CalibrationFormClosed (C : CalibrationFormPackage) : Prop :=
  C.calibrationCondition ∧ C.closednessCondition ∧ C.comassCondition

theorem calibration_form_closed_from_evidence (C : CalibrationFormPackage) (E : CalibrationFormEvidence C) : CalibrationFormClosed C :=
  And.intro E.calibrationConditionClosed (And.intro E.closednessConditionClosed E.comassConditionClosed)

end CalibrationsCalibratedGeometriesCanonicalLaneLean
end HautevilleHouse