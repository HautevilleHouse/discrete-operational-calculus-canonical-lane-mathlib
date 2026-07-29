import DiscreteOperationalCalculusCanonicalLaneLean.SpectralPackage

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure TauberianPackage {D : DifferenceOperatorPackage} {C : ConvolutionPackage D} {S : SpectralPackage D} where
  abelianTheorem : Prop
  tauberianTheorem : Prop
  asymptoticEquivalence : Prop
  convergenceRate : Prop

structure TauberianEvidence {D : DifferenceOperatorPackage} {C : ConvolutionPackage D} {S : SpectralPackage D} (T : TauberianPackage C S) where
  abelianTheoremClosed : T.abelianTheorem
  tauberianTheoremClosed : T.tauberianTheorem
  asymptoticEquivalenceClosed : T.asymptoticEquivalence
  convergenceRateClosed : T.convergenceRate

def TauberianClosed {D : DifferenceOperatorPackage} {C : ConvolutionPackage D} {S : SpectralPackage D} (T : TauberianPackage C S) : Prop :=
  T.abelianTheorem ∧ T.tauberianTheorem ∧ T.asymptoticEquivalence ∧ T.convergenceRate

theorem tauberian_closed_from_evidence
    {D : DifferenceOperatorPackage} {C : ConvolutionPackage D} {S : SpectralPackage D}
    (T : TauberianPackage C S) (E : TauberianEvidence T) : TauberianClosed T := by
  exact And.intro E.abelianTheoremClosed (And.intro E.tauberianTheoremClosed (And.intro E.asymptoticEquivalenceClosed E.convergenceRateClosed))

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
