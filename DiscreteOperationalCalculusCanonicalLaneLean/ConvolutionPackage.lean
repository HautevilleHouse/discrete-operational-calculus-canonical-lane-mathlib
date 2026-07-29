import DiscreteOperationalCalculusCanonicalLaneLean.DifferenceOperatorPackage

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure ConvolutionPackage {D : DifferenceOperatorPackage} where
  discreteConvolution : Type u
  associativity : Prop
  commutativity : Prop
  identityElement : Prop
  convolutionTheorem : Prop

structure ConvolutionEvidence {D : DifferenceOperatorPackage} (C : ConvolutionPackage D) where
  associativityClosed : C.associativity
  commutativityClosed : C.commutativity
  identityElementClosed : C.identityElement
  convolutionTheoremClosed : C.convolutionTheorem

def ConvolutionClosed {D : DifferenceOperatorPackage} (C : ConvolutionPackage D) : Prop :=
  C.associativity ∧ C.commutativity ∧ C.identityElement ∧ C.convolutionTheorem

theorem convolution_closed_from_evidence
    {D : DifferenceOperatorPackage} (C : ConvolutionPackage D) (E : ConvolutionEvidence C) :
    ConvolutionClosed C := by
  exact And.intro E.associativityClosed (And.intro E.commutativityClosed (And.intro E.identityElementClosed E.convolutionTheoremClosed))

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
