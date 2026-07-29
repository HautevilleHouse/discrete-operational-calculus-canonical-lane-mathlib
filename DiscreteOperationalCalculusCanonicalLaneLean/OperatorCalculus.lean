import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteOperationalCalculusCanonicalLaneLean.DiscreteSignalStructures

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure DiscreteOperator (D : DiscreteSignalStructure) where
  domain : D.indexSet → Type
  codomain : D.indexSet → Type
  action : (i : D.indexSet) → domain i → codomain i
  productRule : Prop
  compositionClosed : Prop

def OperatorCalculusClosed {D : DiscreteSignalStructure} (O : DiscreteOperator D) : Prop :=
  O.productRule ∧ O.compositionClosed

structure SummationByParts (D : DiscreteSignalStructure) where
  formula : Prop
  boundaryTerm : Prop
  associativity : Prop

def SummationByPartsClosed (S : SummationByParts) : Prop :=
  S.formula ∧ S.boundaryTerm ∧ S.associativity

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse
