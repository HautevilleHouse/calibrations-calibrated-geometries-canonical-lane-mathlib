import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesCanonicalLaneLean

structure CalibrationForm (M : Type u) where
  degree : Nat
  closed : Bool
  comass : Prop
  finiteComass : Prop
  closedTerm : closed
  finiteComassTerm : finiteComass

structure CalibrationFormEvidence (M : Type u) (C : CalibrationForm M) where
  closedChecked : C.closed
  comassFinite : C.finiteComass

def CalibrationFormClosed (M : Type u) (C : CalibrationForm M) : Prop :=
  C.closed ∧ C.finiteComass

theorem calibration_form_closed_from_evidence (M : Type u) (C : CalibrationForm M)
    (E : CalibrationFormEvidence M C) : CalibrationFormClosed M C := by
  exact And.intro E.closedChecked E.comassFinite

end CalibrationsCalibratedGeometriesCanonicalLaneLean
end HautevilleHouse