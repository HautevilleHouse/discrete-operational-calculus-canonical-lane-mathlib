import canonicalLaneMathlib.AdmissibleClass
import DiscreteOperationalCalculusCanonicalLaneLean.ShiftOperator

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure FiniteDifference (α : Type u) [AddGroup α] [One α] where
  forward : (α → α) → (α → α)
  backward : (α → α) → (α → α)
  forwardDef : ∀ (f : α → α) (x : α), forward f x = f (x + 1) - f x
  backwardDef : ∀ (f : α → α) (x : α), backward f x = f x - f (x - 1)

structure FiniteDifferenceEvidence {α : Type u} [AddGroup α] [One α] (D : FiniteDifference α) where
  forwardDefClosed : ∀ (f : α → α) (x : α), D.forward f x = f (x + 1) - f x
  backwardDefClosed : ∀ (f : α → α) (x : α), D.backward f x = f x - f (x - 1)

def FiniteDifferenceClosed {α : Type u} [AddGroup α] [One α] (D : FiniteDifference α) : Prop :=
  (∀ (f : α → α) (x : α), D.forward f x = f (x + 1) - f x) ∧
  (∀ (f : α → α) (x : α), D.backward f x = f x - f (x - 1))

theorem finite_difference_closed_from_evidence {α : Type u} [AddGroup α] [One α] (D : FiniteDifference α) (E : FiniteDifferenceEvidence D) :
    FiniteDifferenceClosed D := by
  exact And.intro E.forwardDefClosed E.backwardDefClosed

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
