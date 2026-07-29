import ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean

structure AdmissibleClass where
  lane : CspAdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean
end HautevilleHouse