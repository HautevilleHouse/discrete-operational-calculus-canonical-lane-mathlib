import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure DiscreteTimeEvolutionPackage where
  timeDomain : Type
  forwardShift : timeDomain → timeDomain
  backwardShift : timeDomain → timeDomain
  shiftInvertible : Prop
  initialTimePoint : timeDomain

def DiscreteTimeEvolutionClosed (D : DiscreteTimeEvolutionPackage) : Prop :=
  D.shiftInvertible

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse