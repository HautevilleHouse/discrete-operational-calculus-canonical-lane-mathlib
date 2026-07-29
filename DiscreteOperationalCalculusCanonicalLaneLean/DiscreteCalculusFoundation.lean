import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure DiscreteOperationalFoundation where
  shiftOperator : Type u
  differenceOperator : Type v
  convolutionProduct : Type w
  zTransform : Type x
  shiftClosed : Prop
  differenceClosed : Prop
  convolutionClosed : Prop
  zTransformClosed : Prop

structure DiscreteOperationalEvidence (F : DiscreteOperationalFoundation) where
  shiftClosedTerm : F.shiftClosed
  differenceClosedTerm : F.differenceClosed
  convolutionClosedTerm : F.convolutionClosed
  zTransformClosedTerm : F.zTransformClosed

def DiscreteOperationalFoundationClosed (F : DiscreteOperationalFoundation) : Prop :=
  F.shiftClosed ∧ F.differenceClosed ∧ F.convolutionClosed ∧ F.zTransformClosed

theorem discrete_operational_foundation_closed_from_evidence
    (F : DiscreteOperationalFoundation) (E : DiscreteOperationalEvidence F) :
    DiscreteOperationalFoundationClosed F := by
  exact And.intro E.shiftClosedTerm
    (And.intro E.differenceClosedTerm
      (And.intro E.convolutionClosedTerm E.zTransformClosedTerm))

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
