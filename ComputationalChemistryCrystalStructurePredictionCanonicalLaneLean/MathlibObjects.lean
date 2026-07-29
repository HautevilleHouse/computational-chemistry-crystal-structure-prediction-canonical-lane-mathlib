import ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean

structure CspAdmittedObject where
  crystal : CrystalStructure
  projectedEnergy : Float
  solver : DecisionProcedure

structure DecisionProcedure where
  accepts : Float -> Bool

structure EndgameState where
  admittedObject : CspAdmittedObject

def Decides (M : DecisionProcedure) (target : Float) : Prop :=
  M.accepts target = true ↔ target ≤ 0.0

end ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean
end HautevilleHouse