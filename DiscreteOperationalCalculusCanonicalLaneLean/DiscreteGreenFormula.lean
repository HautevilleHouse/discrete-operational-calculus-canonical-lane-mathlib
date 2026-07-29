import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure DiscreteGreenFormulaPackage {D : DiscreteTimeEvolutionPackage} (Δ : DifferenceOperator D) where
  sumByParts : Prop
  boundaryTerms : Prop
  discreteGreenClosed : Prop

def DiscreteGreenFormulaClosed {D : DiscreteTimeEvolutionPackage} {Δ : DifferenceOperator D} (G : DiscreteGreenFormulaPackage Δ) : Prop :=
  G.discreteGreenClosed

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse