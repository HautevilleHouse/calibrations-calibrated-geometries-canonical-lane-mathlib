import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesCanonicalLaneLean

structure CalibrationPackage where
  manifold : Type u
  metric : Type v
  calibrationForm : Type w
  closedness : Prop
  comass_bound : Prop
  calibrationCondition : Prop
  manifoldSmooth : Prop
  metricSmooth : Prop
  formSmooth : Prop

structure CalibrationEvidence (C : CalibrationPackage) where
  closednessClosed : C.closedness
  comassBoundClosed : C.comass_bound
  calibrationConditionClosed : C.calibrationCondition
  manifoldSmoothClosed : C.manifoldSmooth
  metricSmoothClosed : C.metricSmooth
  formSmoothClosed : C.formSmooth

def CalibrationClosed (C : CalibrationPackage) : Prop :=
  C.closedness ∧ C.comass_bound ∧ C.calibrationCondition ∧
  C.manifoldSmooth ∧ C.metricSmooth ∧ C.formSmooth

theorem calibration_closed_from_evidence (C : CalibrationPackage) (E : CalibrationEvidence C) :
    CalibrationClosed C := by
  exact And.intro E.closednessClosed
    (And.intro E.comassBoundClosed
      (And.intro E.calibrationConditionClosed
        (And.intro E.manifoldSmoothClosed
          (And.intro E.metricSmoothClosed E.formSmoothClosed))))

end CalibrationsCalibratedGeometriesCanonicalLaneLean
end HautevilleHouse