import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean

-- Crystal lattice types relevant to structure prediction
structure UnitCell where
  a : Float
  b : Float
  c : Float
  alpha : Float
  beta : Float
  gamma : Float
deriving Repr, DecidableEq

structure LatticeEnergy where
  total : Float
  coulomb : Float
  dispersion : Float
  repulsion : Float
deriving Repr, DecidableEq

structure SymmetryGroup where
  name : String
  operators : List String
deriving Repr, DecidableEq

structure CrystalStructure where
  cell : UnitCell
  energy : LatticeEnergy
  symmetry : SymmetryGroup
  composition : String
deriving Repr, DecidableEq

-- Admissible class for crystal structures: those with computable energy within tolerance
def EnergyComputable (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage

theorem energy_computable_from_admissible (A : AdmissibleClass) : EnergyComputable A :=
  A.solverDecidesProjectedLanguage

end ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean
end HautevilleHouse