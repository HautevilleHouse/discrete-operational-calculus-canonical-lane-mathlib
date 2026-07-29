import DiscreteOperationalCalculusCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure DifferenceOperatorPackage where
  shiftOperator : Type u
  forwardDifference : Type v
  backwardDifference : Type w
  discreteDerivative : Type x
  shiftProperties : Prop
  differenceProperties : Prop
  discreteDerivativeProperties : Prop

structure DifferenceOperatorEvidence (D : DifferenceOperatorPackage) where
  shiftPropertiesClosed : D.shiftProperties
  differencePropertiesClosed : D.differenceProperties
  discreteDerivativePropertiesClosed : D.discreteDerivativeProperties

def DifferenceOperatorClosed (D : DifferenceOperatorPackage) : Prop :=
  D.shiftProperties ∧ D.differenceProperties ∧ D.discreteDerivativeProperties

theorem difference_operator_closed_from_evidence (D : DifferenceOperatorPackage) (E : DifferenceOperatorEvidence D) :
    DifferenceOperatorClosed D := by
  exact And.intro E.shiftPropertiesClosed (And.intro E.differencePropertiesClosed E.discreteDerivativePropertiesClosed)

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
