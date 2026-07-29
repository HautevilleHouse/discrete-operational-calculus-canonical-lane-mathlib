import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure ZTransform where
  sequence : ℕ → ℝ
  regionOfConvergence : Set ℂ
  transformFormula : ℂ → ℂ

structure ZTransformPackage where
  convergenceRadius : Prop
  inverseTransformFormula : Prop
  convolutionTheorem : Prop

structure ZTransformEvidence (P : ZTransformPackage) where
  convergenceRadiusClosed : P.convergenceRadius
  inverseTransformFormulaClosed : P.inverseTransformFormula
  convolutionTheoremClosed : P.convolutionTheorem

def ZTransformClosed (P : ZTransformPackage) : Prop :=
  P.convergenceRadius ∧ P.inverseTransformFormula ∧ P.convolutionTheorem

theorem z_transform_closed_from_evidence
    (P : ZTransformPackage) (E : ZTransformEvidence P) :
    ZTransformClosed P := by
  exact And.intro E.convergenceRadiusClosed
    (And.intro E.inverseTransformFormulaClosed E.convolutionTheoremClosed)

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse