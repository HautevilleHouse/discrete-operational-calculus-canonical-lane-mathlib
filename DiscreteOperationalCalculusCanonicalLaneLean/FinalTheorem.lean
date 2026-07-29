import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteOperationalCalculusCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DiscreteOperationalCalculusCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

def ConstrainedDiscreteOperationalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_discrete_operational_endgame (A : AdmissibleClass) :
    ConstrainedDiscreteOperationalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
