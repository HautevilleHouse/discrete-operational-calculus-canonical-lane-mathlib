import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure DiscreteAdmittedObject where
  operatorSpace : Type
  sequenceSpace : Type
  shiftOperator : (sequenceSpace → sequenceSpace)
  differenceOperator : (operatorSpace → operatorSpace)
  discreteConvolution : (operatorSpace → operatorSpace → operatorSpace)
  spectralMapping : (operatorSpace → operatorSpace)
  algebraicRelationsSatisfied : Prop
  analyticPropertiesSatisfied : Prop
  conclusion : algebraicRelationsSatisfied ∧ analyticPropertiesSatisfied

structure AdmissibleClass where
  object : DiscreteAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiscreteOperationalClosure A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
