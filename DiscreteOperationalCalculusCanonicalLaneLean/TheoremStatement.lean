import HautevilleHouse.DiscreteOperationalCalculusCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  discreteConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "DiscreteOperationalCalculus",
  theoremName := "Discrete Operational Calculus",
  theoremObject := "Discrete Operational Calculus",
  classicalBoundary := "Unrestricted classical boundary remains carried",
  discreteConstrainedStatement := "Discrete operational calculus constrained to admissible class",
  certificateLane := "discrete_constrained",
  carriedRemainder := "Classical source boundary carried by theorem boundary open"
}

end DiscreteOperationalCalculusCanonicalLaneLean
end HautevilleHouse