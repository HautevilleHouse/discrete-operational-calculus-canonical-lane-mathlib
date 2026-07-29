import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure DiscreteConvolutionProduct (D : DiscreteTimeEvolutionPackage) where
  convolution : (D.timeDomain → ℝ) → (D.timeDomain → ℝ) → (D.timeDomain → ℝ)
  associative : Prop
  commutative : Prop
  identityElement : D.timeDomain → ℝ
  convolutionClosed : Prop

def DiscreteConvolutionProductClosed (C : DiscreteConvolutionProduct D) : Prop :=
  C.convolutionClosed

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse