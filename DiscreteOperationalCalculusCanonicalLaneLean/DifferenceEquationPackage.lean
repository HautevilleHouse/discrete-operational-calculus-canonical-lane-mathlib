import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure DifferenceEquationPackage (F : DiscreteOperationalFoundation) where
  equationOrder : Nat
  linearConstantCoefficient : Prop
  homogeneousSolution : Prop
  particularSolution : Prop
  stabilityCondition : Prop

structure DifferenceEquationEvidence {F : DiscreteOperationalFoundation}
    (D : DifferenceEquationPackage F) where
  linearConstantCoefficientClosed : D.linearConstantCoefficient
  homogeneousSolutionClosed : D.homogeneousSolution
  particularSolutionClosed : D.particularSolution
  stabilityConditionClosed : D.stabilityCondition

def DifferenceEquationClosed {F : DiscreteOperationalFoundation}
    (D : DifferenceEquationPackage F) : Prop :=
  D.linearConstantCoefficient ∧ D.homogeneousSolution ∧ D.particularSolution ∧ D.stabilityCondition

theorem difference_equation_closed_from_evidence
    {F : DiscreteOperationalFoundation} (D : DifferenceEquationPackage F)
    (E : DifferenceEquationEvidence D) : DifferenceEquationClosed D := by
  exact And.intro E.linearConstantCoefficientClosed
    (And.intro E.homogeneousSolutionClosed
      (And.intro E.particularSolutionClosed E.stabilityConditionClosed))

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
