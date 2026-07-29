import HautevilleHouse.ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean.GlobalOptimization
import HautevilleHouse.ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean.ScoringFunction
import HautevilleHouse.ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean.XRayDiffraction

namespace HautevilleHouse
namespace ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean

def ConstrainedCSPClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧
  GlobalOptimizationAdmissible A ∧
  ScoringAdmissible A ∧
  XRDClosure A

theorem constrained_csp_endgame (A : AdmissibleClass) : ConstrainedCSPClosure A :=
  by
    refine And.intro (bridge_from_admissible_class A) ?_
    refine And.intro (gate_from_admissible_class A) ?_
    refine And.intro (global_optimization_endgame A) ?_
    refine And.intro (scoring_admissible_closure A) ?_
    exact xrd_closure_proof A

end ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean
end HautevilleHouse