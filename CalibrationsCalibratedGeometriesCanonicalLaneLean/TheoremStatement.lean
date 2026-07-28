import HautevilleHouse.CalibrationsCalibratedGeometriesCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  calibratedConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "calibrations-calibrated-geometries-canonical-lane",
  theoremName := "Calibrations Calibrated Geometries",
  theoremObject := "Calibrated submanifolds and calibrations classification",
  classicalBoundary := "Classical PDE and geometric measure theory boundary",
  calibratedConstrainedStatement := "Calibrated-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := "calibrated_constrained",
  carriedRemainder := "Classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end CalibrationsCalibratedGeometriesCanonicalLaneLean
end HautevilleHouse