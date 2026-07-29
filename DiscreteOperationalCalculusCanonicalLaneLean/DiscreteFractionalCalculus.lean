import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure DiscreteFractionalCalculus where
  fractionalOrder : ℝ
  differentiationType : String
  fractionalIntegral : (ℕ → ℝ) → ℕ → ℝ
  fractionalDerivative : (ℕ → ℝ) → ℕ → ℝ

structure DiscreteFractionalCalculusPackage where
  fractionalIntegralExists : Prop
  fractionalDerivativeExists : Prop
  compositionRule : Prop
  linearity : Prop

structure DiscreteFractionalCalculusEvidence (P : DiscreteFractionalCalculusPackage) where
  fractionalIntegralExistsClosed : P.fractionalIntegralExists
  fractionalDerivativeExistsClosed : P.fractionalDerivativeExists
  compositionRuleClosed : P.compositionRule
  linearityClosed : P.linearity

def DiscreteFractionalCalculusClosed (P : DiscreteFractionalCalculusPackage) : Prop :=
  P.fractionalIntegralExists ∧ P.fractionalDerivativeExists ∧ P.compositionRule ∧ P.linearity

theorem discrete_fractional_calculus_closed_from_evidence
    (P : DiscreteFractionalCalculusPackage) (E : DiscreteFractionalCalculusEvidence P) :
    DiscreteFractionalCalculusClosed P := by
  exact And.intro E.fractionalIntegralExistsClosed
    (And.intro E.fractionalDerivativeExistsClosed
      (And.intro E.compositionRuleClosed E.linearityClosed))

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse