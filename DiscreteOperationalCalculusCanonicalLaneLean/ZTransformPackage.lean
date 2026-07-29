import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteOperationalCalculusCanonicalLaneLean.DiscreteSignalStructures

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure ZTransformPackage {D : DiscreteSignalStructure} where
  regionOfConvergence : Set ℂ
  transformDefined : (D.signalSpace 0) → (ℂ → ℂ)
  inversionFormula : Prop
  linearity : Prop
  timeShift : Prop
  convolutionProperty : Prop

def ZTransformClosed {D : DiscreteSignalStructure} (Z : ZTransformPackage D) : Prop :=
  Z.inversionFormula ∧ Z.linearity ∧ Z.timeShift ∧ Z.convolutionProperty

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
