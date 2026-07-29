import DiscreteOperationalCalculusCanonicalLaneLean.DifferenceOperatorPackage

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure GreenFunctionPackage {D : DifferenceOperatorPackage} where
  discreteGreenFunction : Type u
  causalityProperty : Prop
  invertibilityProperty : Prop
  boundaryCondition : Prop

structure GreenFunctionEvidence {D : DifferenceOperatorPackage} (G : GreenFunctionPackage D) where
  causalityPropertyClosed : G.causalityProperty
  invertibilityPropertyClosed : G.invertibilityProperty
  boundaryConditionClosed : G.boundaryCondition

def GreenFunctionClosed {D : DifferenceOperatorPackage} (G : GreenFunctionPackage D) : Prop :=
  G.causalityProperty ∧ G.invertibilityProperty ∧ G.boundaryCondition

theorem green_function_closed_from_evidence
    {D : DifferenceOperatorPackage} (G : GreenFunctionPackage D) (E : GreenFunctionEvidence G) :
    GreenFunctionClosed G := by
  exact And.intro E.causalityPropertyClosed (And.intro E.invertibilityPropertyClosed E.boundaryConditionClosed)

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
