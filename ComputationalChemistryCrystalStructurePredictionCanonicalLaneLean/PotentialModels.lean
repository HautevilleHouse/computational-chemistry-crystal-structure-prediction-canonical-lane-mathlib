import Mathlib

namespace HautevilleHouse
namespace ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean

structure PotentialModel where
  name : String
  parameters : List (String × Float)
  energyFunction : CrystalStructure -> Float
deriving Repr, DecidableEq

structure PairPotential where
  atomTypes : String × String
  parameters : List Float
deriving Repr, DecidableEq

def lennardJones (epsilon sigma : Float) (r : Float) : Float :=
  4 * epsilon * ((sigma / r)^12 - (sigma / r)^6)

theorem lennard_jones_positive (epsilon sigma r : Float) (h : r > 0) : lennardJones epsilon sigma r > -epsilon := by
  have hpos : (sigma / r)^12 - (sigma / r)^6 ≥ -1/4 := by
    have : (sigma / r)^6 ≥ 0 := by positivity
    nlinarith
  have : 4 * epsilon * ((sigma / r)^12 - (sigma / r)^6) ≥ -epsilon := by
    nlinarith
  exact this

end ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean
end HautevilleHouse