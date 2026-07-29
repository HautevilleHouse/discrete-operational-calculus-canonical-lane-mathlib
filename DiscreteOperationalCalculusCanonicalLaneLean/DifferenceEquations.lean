import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteOperationalCalculusCanonicalLaneLean.DiscreteSignalStructures

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure DifferenceEquation {D : DiscreteSignalStructure} where
  order : ℕ
  coefficients : ℕ → ℂ
  forcingTerm : D.signalSpace 0
  solutionSpace : Type
  existenceAndUniqueness : Prop

def DifferenceEquationClosed {D : DiscreteSignalStructure} (E : DifferenceEquation D) : Prop :=
  E.existenceAndUniqueness

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
