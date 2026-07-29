import ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean.Formalization

namespace HautevilleHouse
namespace ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile :=
  []

def baselineCertificateGates : List CertificateGate :=
  []

end ComputationalChemistryCrystalStructurePredictionCanonicalLaneLean
end HautevilleHouse