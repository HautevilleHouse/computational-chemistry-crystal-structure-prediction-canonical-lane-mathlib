import ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean

def endgameProjection : EndgameState -> EndgameState := id

theorem endgame_projection_idempotent (x : EndgameState) :
    endgameProjection (endgameProjection x) = endgameProjection x := by
  rfl

end ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean
end HautevilleHouse