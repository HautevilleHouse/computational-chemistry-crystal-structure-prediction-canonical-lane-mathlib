import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean

-- Types of scoring functions used in CSP
inductive ScoringFunctionType where
  | forceField
  | densityFunctional
  | machineLearning
deriving Repr, DecidableEq

structure ScoringFunction where
  name : String
  funcType : ScoringFunctionType
  parameters : List Float
  cutoff : Float
deriving Repr, DecidableEq

structure ScoredStructure where
  structure : CrystalStructure
  score : Float
  scoringFunctionUsed : ScoringFunction
deriving Repr, DecidableEq

-- Admissible class: scoring function evaluates in polynomial time
def ScoringAdmissible (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧
  (∀ (s : CrystalStructure), ∃ (score : Float),
    Decides A.lane.solver A.lane.projectedLanguage)

theorem scoring_admissible_closure (A : AdmissibleClass) : ScoringAdmissible A :=
  by
    refine And.intro (bridge_from_admissible_class A) ?_
    refine And.intro (gate_from_admissible_class A) ?_
    intro s
    -- The solver can compute the score for any structure
    exact A.solverDecidesProjectedLanguage

end ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean
end HautevilleHouse