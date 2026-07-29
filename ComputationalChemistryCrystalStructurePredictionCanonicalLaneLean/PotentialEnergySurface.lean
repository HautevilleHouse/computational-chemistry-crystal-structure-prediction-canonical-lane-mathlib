import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean.CrystalLatticeModels

namespace HautevilleHouse
namespace ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean

-- Represents a point on the potential energy surface
structure PESPoint where
  structure : CrystalStructure
  energyGradient : Float
  hessianEigenvalues : List Float
deriving Repr, DecidableEq

-- Local minima and saddle points
inductive CriticalPointType where
  | localMinimum
  | saddlePoint (order : Nat)
  | transitionState
deriving Repr, DecidableEq

-- Basin of attraction for a given structure
structure EnergyBasin where
  center : CrystalStructure
  boundary : List CrystalStructure
  depth : Float
deriving Repr, DecidableEq

-- Admissible closure: critical points are identifiable
structure PESAdmissibleClosure (A : AdmissibleClass) : Prop where
  bridgeClosed : bridgeClosed A
  gateClosed : gateClosed A
  criticalPointsComputed : Decides A.lane.solver A.lane.projectedLanguage

theorem pes_admissible_closure_proof (A : AdmissibleClass) : PESAdmissibleClosure A :=
  { bridgeClosed := bridge_from_admissible_class A
    gateClosed := gate_from_admissible_class A
    criticalPointsComputed := A.solverDecidesProjectedLanguage }

end ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean
end HautevilleHouse