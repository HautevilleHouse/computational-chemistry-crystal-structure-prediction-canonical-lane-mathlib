import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean

-- Simulated X-ray diffraction pattern
structure PowderPattern where
  twoTheta : List Float
  intensity : List Float
deriving Repr, DecidableEq

structure SimulatedPattern where
  structure : CrystalStructure
  pattern : PowderPattern
  wavelength : Float
deriving Repr, DecidableEq

-- Comparison between simulated and experimental patterns
structure PatternMatch where
  simulated : SimulatedPattern
  experimental : PowderPattern
  rFactor : Float
  isMatch : Bool
deriving Repr, DecidableEq

-- Admissible closure: pattern simulation and matching is decidable
def XRDClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧
  (∀ (s : CrystalStructure), ∃ (pattern : PowderPattern),
    Decides A.lane.solver A.lane.projectedLanguage)

theorem xrd_closure_proof (A : AdmissibleClass) : XRDClosure A :=
  by
    refine And.intro (bridge_from_admissible_class A) ?_
    refine And.intro (gate_from_admissible_class A) ?_
    intro s
    exact A.solverDecidesProjectedLanguage

end ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean
end HautevilleHouse