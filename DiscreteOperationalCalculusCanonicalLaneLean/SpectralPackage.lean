import DiscreteOperationalCalculusCanonicalLaneLean.DifferenceOperatorPackage

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure SpectralPackage {D : DifferenceOperatorPackage} where
  eigenvalueEquation : Type u
  eigenfunctionBasis : Type v
  spectralDecomposition : Prop
  spectralMapping : Prop

structure SpectralEvidence {D : DifferenceOperatorPackage} (S : SpectralPackage D) where
  spectralDecompositionClosed : S.spectralDecomposition
  spectralMappingClosed : S.spectralMapping

def SpectralClosed {D : DifferenceOperatorPackage} (S : SpectralPackage D) : Prop :=
  S.spectralDecomposition ∧ S.spectralMapping

theorem spectral_closed_from_evidence
    {D : DifferenceOperatorPackage} (S : SpectralPackage D) (E : SpectralEvidence S) :
    SpectralClosed S := by
  exact And.intro E.spectralDecompositionClosed E.spectralMappingClosed

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
