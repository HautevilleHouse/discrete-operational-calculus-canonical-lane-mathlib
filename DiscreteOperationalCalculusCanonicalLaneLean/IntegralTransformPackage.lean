import DiscreteOperationalCalculusCanonicalLaneLean.DifferenceOperatorPackage

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure IntegralTransformPackage {D : DifferenceOperatorPackage} where
  discreteLaplaceTransform : Type u
  discreteFourierTransform : Type v
  discreteZTransform : Type w
  transformProperties : Prop
  inversionFormula : Prop

structure IntegralTransformEvidence {D : DifferenceOperatorPackage} (I : IntegralTransformPackage D) where
  transformPropertiesClosed : I.transformProperties
  inversionFormulaClosed : I.inversionFormula

def IntegralTransformClosed {D : DifferenceOperatorPackage} (I : IntegralTransformPackage D) : Prop :=
  I.transformProperties ∧ I.inversionFormula

theorem integral_transform_closed_from_evidence
    {D : DifferenceOperatorPackage} (I : IntegralTransformPackage D) (E : IntegralTransformEvidence I) :
    IntegralTransformClosed I := by
  exact And.intro E.transformPropertiesClosed E.inversionFormulaClosed

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
