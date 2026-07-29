import BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean
end HautevilleHouse