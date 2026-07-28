import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesCanonicalLaneLean

structure CalibratedSubmanifoldPackage (A : AdmissibleClass) where
  submanifold : Type u
  immersion : Type v
  calibrationCompat : Prop
  volumeMinimizing : Prop
  integrationFormula : Prop

structure CalibratedSubmanifoldEvidence {A : AdmissibleClass} (P : CalibratedSubmanifoldPackage A) where
  calibrationCompatClosed : P.calibrationCompat
  volumeMinimizingClosed : P.volumeMinimizing
  integrationFormulaClosed : P.integrationFormula

def CalibratedSubmanifoldClosed {A : AdmissibleClass} (P : CalibratedSubmanifoldPackage A) : Prop :=
  P.calibrationCompat ∧ P.volumeMinimizing ∧ P.integrationFormula

theorem calibrated_submanifold_closed_from_evidence {A : AdmissibleClass}
    (P : CalibratedSubmanifoldPackage A) (E : CalibratedSubmanifoldEvidence P) :
    CalibratedSubmanifoldClosed P := by
  exact And.intro E.calibrationCompatClosed (And.intro E.volumeMinimizingClosed E.integrationFormulaClosed)

end CalibrationsCalibratedGeometriesCanonicalLaneLean
end HautevilleHouse