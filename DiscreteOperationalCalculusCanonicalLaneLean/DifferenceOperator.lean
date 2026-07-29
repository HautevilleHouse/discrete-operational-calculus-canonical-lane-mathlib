import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure DifferenceOperator (D : DiscreteTimeEvolutionPackage) where
  forwardDifference : (D.timeDomain → ℝ) → (D.timeDomain → ℝ)
  backwardDifference : (D.timeDomain → ℝ) → (D.timeDomain → ℝ)
  linearity : Prop
  productRule : Prop
  differenceClosed : Prop

def DifferenceOperatorClosed {D : DiscreteTimeEvolutionPackage} (Δ : DifferenceOperator D) : Prop :=
  Δ.differenceClosed

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse