import CalibrationsCalibratedGeometriesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesCanonicalLaneLean

structure AdmissibleClass where
  object : CalibratedAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CalibrationsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CalibrationsCalibratedGeometriesCanonicalLaneLean
end HautevilleHouse