import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteOperationalCalculusCanonicalLaneLean.ZTransformPackage

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure StabilityCriterion {D : DiscreteSignalStructure} {Z : ZTransformPackage D} where
  poleCondition : Set ℂ
  impulseResponse : D.signalSpace 0
  boundedInputBoundedOutput : Prop
  poleInsideUnitCircle : Prop

def StabilityClosed {D : DiscreteSignalStructure} {Z : ZTransformPackage D} (S : StabilityCriterion D Z) : Prop :=
  S.boundedInputBoundedOutput ∧ S.poleInsideUnitCircle

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
