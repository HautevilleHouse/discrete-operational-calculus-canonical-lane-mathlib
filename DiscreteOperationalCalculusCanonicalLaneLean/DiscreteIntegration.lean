import canonicalLaneMathlib.AdmissibleClass
import DiscreteOperationalCalculusCanonicalLaneLean.ShiftOperator
import DiscreteOperationalCalculusCanonicalLaneLean.FiniteDifferences

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure DiscreteIntegral (α : Type u) [AddGroup α] [One α] [OrderedAddCommGroup α] where
  sumForward : (α → α) → α → α → α
  sumForwardRec : ∀ (f : α → α) (a b : α), sumForward f a b = if a ≤ b then f a + sumForward f (a + 1) b else 0

structure DiscreteIntegralEvidence {α : Type u} [AddGroup α] [One α] [OrderedAddCommGroup α] (I : DiscreteIntegral α) where
  sumForwardRecClosed : ∀ (f : α → α) (a b : α), I.sumForward f a b = if a ≤ b then f a + I.sumForward f (a + 1) b else 0

def DiscreteIntegralClosed {α : Type u} [AddGroup α] [One α] [OrderedAddCommGroup α] (I : DiscreteIntegral α) : Prop :=
  ∀ (f : α → α) (a b : α), I.sumForward f a b = if a ≤ b then f a + I.sumForward f (a + 1) b else 0

theorem discrete_integral_closed_from_evidence {α : Type u} [AddGroup α] [One α] [OrderedAddCommGroup α] (I : DiscreteIntegral α) (E : DiscreteIntegralEvidence I) :
    DiscreteIntegralClosed I := by
  exact E.sumForwardRecClosed

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
