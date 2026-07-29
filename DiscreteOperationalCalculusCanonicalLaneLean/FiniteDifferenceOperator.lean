import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure FiniteDifferenceOperator where
  order : ℕ
  stepSize : ℝ
  coefficients : List ℝ
  applicability : Prop

structure FiniteDifferencePackage where
  consistentApproximation : Prop
  stabilityCondition : Prop
  convergentScheme : Prop

structure FiniteDifferenceEvidence (P : FiniteDifferencePackage) where
  consistentApproximationClosed : P.consistentApproximation
  stabilityConditionClosed : P.stabilityCondition
  convergentSchemeClosed : P.convergentScheme

def FiniteDifferenceClosed (P : FiniteDifferencePackage) : Prop :=
  P.consistentApproximation ∧ P.stabilityCondition ∧ P.convergentScheme

theorem finite_difference_closed_from_evidence
    (P : FiniteDifferencePackage) (E : FiniteDifferenceEvidence P) :
    FiniteDifferenceClosed P := by
  exact And.intro E.consistentApproximationClosed
    (And.intro E.stabilityConditionClosed E.convergentSchemeClosed)

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse