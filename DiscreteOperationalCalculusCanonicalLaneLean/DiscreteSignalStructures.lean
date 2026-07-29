import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure DiscreteSignalStructure where
  indexSet : Type
  signalSpace : indexSet → Type
  shiftOperator : (i : indexSet) → signalSpace i → signalSet (succ i)
  differenceOperator : (i : indexSet) → signalSpace i → signalSet i
  signalSpaceDimension : ℕ
  shiftInvertible : Prop
  differenceFormula : Prop

def DiscreteSignalClosed (D : DiscreteSignalStructure) : Prop :=
  D.shiftInvertible ∧ D.differenceFormula

structure ConvolutionProduct where
  signal1 : DiscreteSignalStructure
  signal2 : DiscreteSignalStructure
  convolutionResult : DiscreteSignalStructure
  convolutionDefined : Prop

def ConvolutionClosed (C : ConvolutionProduct) : Prop :=
  C.convolutionDefined

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
