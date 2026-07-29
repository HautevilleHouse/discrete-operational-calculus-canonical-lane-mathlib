import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteOperationalCalculusCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
