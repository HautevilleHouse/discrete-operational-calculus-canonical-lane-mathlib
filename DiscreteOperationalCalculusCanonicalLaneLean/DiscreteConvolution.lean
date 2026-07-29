import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure DiscreteConvolution where
  sequenceA : ℕ → ℝ
  sequenceB : ℕ → ℝ
  convolutionResult : ℕ → ℝ

structure DiscreteConvolutionPackage where
  associativity : Prop
  commutativity : Prop
  identityElement : Prop
  distributivity : Prop

structure DiscreteConvolutionEvidence (P : DiscreteConvolutionPackage) where
  associativityClosed : P.associativity
  commutativityClosed : P.commutativity
  identityElementClosed : P.identityElement
  distributivityClosed : P.distributivity

def DiscreteConvolutionClosed (P : DiscreteConvolutionPackage) : Prop :=
  P.associativity ∧ P.commutativity ∧ P.identityElement ∧ P.distributivity

theorem discrete_convolution_closed_from_evidence
    (P : DiscreteConvolutionPackage) (E : DiscreteConvolutionEvidence P) :
    DiscreteConvolutionClosed P := by
  exact And.intro E.associativityClosed
    (And.intro E.commutativityClosed
      (And.intro E.identityElementClosed E.distributivityClosed))

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse