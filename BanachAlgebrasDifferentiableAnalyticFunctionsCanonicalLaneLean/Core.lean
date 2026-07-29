import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean

def sourceRepository : String := "banach-algebras-differentiable-analytic-functions-canonical-lane"
def sourceDescription : String := "Banach Algebras Differentiable Analytic Functions"

def classicalSourceBoundaryCarried : Prop := True

theorem classical_source_boundary_carried_checked : classicalSourceBoundaryCarried := by
  unfold classicalSourceBoundaryCarried
  trivial

end BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean
end HautevilleHouse