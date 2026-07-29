import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure DiscreteHeatEquationPackage {D : DiscreteTimeEvolutionPackage} (Δ : DifferenceOperator D) (L : DiscreteLaplaceOperator Δ) where
  heatKernel : (D.timeDomain → ℝ) → D.timeDomain → ℝ → ℝ
  heatEquationSolved : Prop
  maximumPrinciple : Prop
  decayEstimates : Prop
  heatClosed : Prop

def DiscreteHeatEquationClosed {D : DiscreteTimeEvolutionPackage} {Δ : DifferenceOperator D} {L : DiscreteLaplaceOperator Δ} (H : DiscreteHeatEquationPackage Δ L) : Prop :=
  H.heatClosed

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse