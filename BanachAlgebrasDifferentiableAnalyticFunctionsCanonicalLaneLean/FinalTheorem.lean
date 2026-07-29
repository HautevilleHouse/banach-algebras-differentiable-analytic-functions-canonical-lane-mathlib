import BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean.AnalyticFunctionAlgebraLayer

namespace HautevilleHouse
namespace BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean

def ConstrainedBanachAlgebraAnalyticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ BanachAlgebraSpectralLayerClosed {} ∧ AnalyticFunctionAlgebraLayerClosed {}

theorem constrained_banach_algebra_analytic_endgame (A : AdmissibleClass) :
    ConstrainedBanachAlgebraAnalyticClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A)
      (And.intro banach_algebra_spectral_layer_closed_checked
        analytic_function_algebra_layer_closed_checked))

end BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean
end HautevilleHouse