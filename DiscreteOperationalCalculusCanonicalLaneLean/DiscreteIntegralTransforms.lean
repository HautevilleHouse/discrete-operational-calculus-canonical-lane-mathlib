import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure DiscreteIntegralTransform where
  inputSequence : ℕ → ℝ
  transformKernel : ℕ → ℕ → ℝ
  outputSequence : ℕ → ℝ
  kernelInvertible : Prop
  basisOrthogonality : Prop

structure DiscreteIntegralTransformPackage where
  summableRepresentation : Prop
  inversionFormula : Prop
  convolutionIdentity : Prop

structure DiscreteIntegralTransformEvidence (P : DiscreteIntegralTransformPackage) where
  summableRepresentationClosed : P.summableRepresentation
  inversionFormulaClosed : P.inversionFormula
  convolutionIdentityClosed : P.convolutionIdentity

def DiscreteIntegralTransformClosed (P : DiscreteIntegralTransformPackage) : Prop :=
  P.summableRepresentation ∧ P.inversionFormula ∧ P.convolutionIdentity

theorem discrete_integral_transform_closed_from_evidence
    (P : DiscreteIntegralTransformPackage) (E : DiscreteIntegralTransformEvidence P) :
    DiscreteIntegralTransformClosed P := by
  exact And.intro E.summableRepresentationClosed
    (And.intro E.inversionFormulaClosed E.convolutionIdentityClosed)

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse