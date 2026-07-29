import ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation :=
  { sourceKey := "crystal-structure-prediction-canonical-lane",
    theoremObject := "CSP energy landscape closure under admissible class",
    commonCoreImported := true,
    theoremSpecificDefinitionsNative := true,
    theoremSpecificBridgeNative := true,
    theoremSpecificAdmittedClosureNative := true,
    unrestrictedClassicalClosureNative := false,
    carriedGap := "energy landscape closure over unrestricted structures remains open" }

end ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean
end HautevilleHouse