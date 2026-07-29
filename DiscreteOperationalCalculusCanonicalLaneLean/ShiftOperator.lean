import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure ShiftOperator (α : Type u) [AddGroup α] where
  shiftFwd : α → α
  shiftBwd : α → α
  shiftFwdLinear : ∀ x y : α, shiftFwd (x + y) = shiftFwd x + shiftFwd y
  shiftBwdLinear : ∀ x y : α, shiftBwd (x + y) = shiftBwd x + shiftBwd y
  shiftFwdBwd : ∀ x : α, shiftFwd (shiftBwd x) = x
  shiftBwdFwd : ∀ x : α, shiftBwd (shiftFwd x) = x

structure ShiftEvidence {α : Type u} [AddGroup α] (S : ShiftOperator α) where
  shiftFwdLinearClosed : ∀ x y : α, S.shiftFwd (x + y) = S.shiftFwd x + S.shiftFwd y
  shiftBwdLinearClosed : ∀ x y : α, S.shiftBwd (x + y) = S.shiftBwd x + S.shiftBwd y
  shiftFwdBwdClosed : ∀ x : α, S.shiftFwd (S.shiftBwd x) = x
  shiftBwdFwdClosed : ∀ x : α, S.shiftBwd (S.shiftFwd x) = x

def ShiftOperatorClosed {α : Type u} [AddGroup α] (S : ShiftOperator α) : Prop :=
  (∀ x y : α, S.shiftFwd (x + y) = S.shiftFwd x + S.shiftFwd y) ∧
  (∀ x y : α, S.shiftBwd (x + y) = S.shiftBwd x + S.shiftBwd y) ∧
  (∀ x : α, S.shiftFwd (S.shiftBwd x) = x) ∧
  (∀ x : α, S.shiftBwd (S.shiftFwd x) = x)

theorem shift_operator_closed_from_evidence {α : Type u} [AddGroup α] (S : ShiftOperator α) (E : ShiftEvidence S) :
    ShiftOperatorClosed S := by
  exact And.intro E.shiftFwdLinearClosed (And.intro E.shiftBwdLinearClosed (And.intro E.shiftFwdBwdClosed E.shiftBwdFwdClosed))

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
