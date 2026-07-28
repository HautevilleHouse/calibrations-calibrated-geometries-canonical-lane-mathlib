import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesCanonicalLaneLean

inductive HolonomyType where
  | U_n (n : ℕ)
  | SU_n (n : ℕ)
  | G2
  | Spin7
  | Sp_n (n : ℕ)

structure SpecialHolonomyPackage where
  manifold : Type u
  metric : Type v
  holonomy : HolonomyType
  reducedHolonomy : Prop
  parallelForms : List Type
  calibrationFormsExist : Prop
  manifoldCompact : Prop

def SpecialHolonomyEvidence (H : SpecialHolonomyPackage) where
  reducedHolonomyClosed : H.reducedHolonomy
  calibrationFormsExistClosed : H.calibrationFormsExist
  manifoldCompactClosed : H.manifoldCompact

def SpecialHolonomyClosed (H : SpecialHolonomyPackage) : Prop :=
  H.reducedHolonomy ∧ H.calibrationFormsExist ∧ H.manifoldCompact

theorem special_holonomy_closed_from_evidence (H : SpecialHolonomyPackage) (E : SpecialHolonomyEvidence H) :
    SpecialHolonomyClosed H := by
  exact And.intro E.reducedHolonomyClosed
    (And.intro E.calibrationFormsExistClosed E.manifoldCompactClosed)

end CalibrationsCalibratedGeometriesCanonicalLaneLean
end HautevilleHouse