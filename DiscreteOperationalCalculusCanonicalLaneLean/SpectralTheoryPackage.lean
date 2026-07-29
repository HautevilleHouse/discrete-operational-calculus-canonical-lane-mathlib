import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure SpectralTheoryPackage (F : DiscreteOperationalFoundation) where
  spectralMeasure : Prop
  spectralRadius : Prop
  spectralResolution : Prop
  functionalCalculus : Prop
  spectralMappingTheorem : Prop

structure SpectralTheoryEvidence {F : DiscreteOperationalFoundation}
    (S : SpectralTheoryPackage F) where
  spectralMeasureClosed : S.spectralMeasure
  spectralRadiusClosed : S.spectralRadius
  spectralResolutionClosed : S.spectralResolution
  functionalCalculusClosed : S.functionalCalculus
  spectralMappingTheoremClosed : S.spectralMappingTheorem

def SpectralTheoryClosed {F : DiscreteOperationalFoundation}
    (S : SpectralTheoryPackage F) : Prop :=
  S.spectralMeasure ∧ S.spectralRadius ∧ S.spectralResolution ∧ S.functionalCalculus ∧ S.spectralMappingTheorem

theorem spectral_theory_closed_from_evidence
    {F : DiscreteOperationalFoundation} (S : SpectralTheoryPackage F)
    (E : SpectralTheoryEvidence S) : SpectralTheoryClosed S := by
  exact And.intro E.spectralMeasureClosed
    (And.intro E.spectralRadiusClosed
      (And.intro E.spectralResolutionClosed
        (And.intro E.functionalCalculusClosed E.spectralMappingTheoremClosed)))

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
