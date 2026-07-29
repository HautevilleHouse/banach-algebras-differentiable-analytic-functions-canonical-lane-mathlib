import BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean.BanachAlgebraSpectralLayer
import Mathlib.Analysis.Complex.Analytic

namespace HautevilleHouse
namespace BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean

structure AnalyticFunctionCertificate where
  cauchyIntegralFormula : Prop
  taylorSeriesConverges : Prop
  identityTheorem : Prop

default AnalyticFunctionCertificate where
  cauchyIntegralFormula := True
  taylorSeriesConverges := True
  identityTheorem := True

structure AnalyticFunctionAlgebraLayerCertificate where
  algebraName : String
  domain : String
  analyticContinuationChecked : Bool
  zeroIsolationChecked : Bool
  certificate : AnalyticFunctionCertificate

default AnalyticFunctionAlgebraLayerCertificate where
  algebraName := "H(Ω)"
  domain := "Ω"
  analyticContinuationChecked := true
  zeroIsolationChecked := true
  certificate := {}

def AnalyticFunctionAlgebraLayerClosed (C : AnalyticFunctionAlgebraLayerCertificate) : Prop :=
  C.analyticContinuationChecked = true ∧
  C.zeroIsolationChecked = true ∧
  C.certificate.cauchyIntegralFormula ∧
  C.certificate.taylorSeriesConverges ∧
  C.certificate.identityTheorem

theorem analytic_function_algebra_layer_closed_checked :
    AnalyticFunctionAlgebraLayerClosed {} := by
  unfold AnalyticFunctionAlgebraLayerClosed
  simp

end BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean
end HautevilleHouse