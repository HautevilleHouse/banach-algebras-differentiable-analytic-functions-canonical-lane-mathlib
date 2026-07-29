import BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.operatorModelChecked,
    A.object.spectralPersistenceBridgeChecked,
    A.object.sourceBoundaryLedgerChecked,
    A.object.classicalRemainderCarried⟩

end BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean
end HautevilleHouse