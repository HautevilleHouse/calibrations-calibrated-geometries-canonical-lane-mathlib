import CalibrationsCalibratedGeometriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesCanonicalLaneLean

structure CalibrationFormPackage where
  form : Type u
  degree : Nat
  closed : Prop
  comassLeOne : Prop
  calibrationFormEvidence : closed ∧ comassLeOne

structure CalibrationFormEvidence (P : CalibrationFormPackage) where
  closedClosed : P.closed
  comassLeOneClosed : P.comassLeOne

def CalibrationFormClosed (P : CalibrationFormPackage) : Prop :=
  P.closed ∧ P.comassLeOne

theorem calibration_form_closed_from_evidence (P : CalibrationFormPackage)
    (E : CalibrationFormEvidence P) : CalibrationFormClosed P := by
  exact And.intro E.closedClosed E.comassLeOneClosed

end CalibrationsCalibratedGeometriesCanonicalLaneLean
end HautevilleHouse