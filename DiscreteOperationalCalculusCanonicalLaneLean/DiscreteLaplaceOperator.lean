import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure DiscreteLaplaceOperator {D : DiscreteTimeEvolutionPackage} (Δ : DifferenceOperator D) where
  laplacian : (D.timeDomain → ℝ) → (D.timeDomain → ℝ)
  symmetric : Prop
  positiveSemidefinite : Prop
  spectrumBounded : Prop
  laplaceClosed : Prop

def DiscreteLaplaceOperatorClosed {D : DiscreteTimeEvolutionPackage} {Δ : DifferenceOperator D} (L : DiscreteLaplaceOperator Δ) : Prop :=
  L.laplaceClosed

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse