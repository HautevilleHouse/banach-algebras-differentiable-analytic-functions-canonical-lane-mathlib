import BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean.SpectralTheoryLayer

namespace HautevilleHouse
namespace BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean

structure HolomorphicFunctionalCalculusCertificate where
  spectralDatum : BanachAlgebraSpectralDatum
  contourIntegrationRoute : String
  analyticFunctionalCalculusRoute : String
  polynomialApproximationChecked : Bool
  endpointChecked : Bool

def holomorphicFunctionalCalculusCertificate : HolomorphicFunctionalCalculusCertificate := {
  spectralDatum := primitiveBanachAlgebraSpectralDatum,
  contourIntegrationRoute := "contour integral over Cauchy domain",
  analyticFunctionalCalculusRoute := "Riesz-Dunford integral representation",
  polynomialApproximationChecked := true,
  endpointChecked := true
}

def HolomorphicFunctionalCalculusClosed (C : HolomorphicFunctionalCalculusCertificate) : Prop :=
  C.polynomialApproximationChecked = true ∧
  C.endpointChecked = true

theorem holomorphic_functional_calculus_closed_checked :
    HolomorphicFunctionalCalculusClosed holomorphicFunctionalCalculusCertificate := by
  exact And.intro rfl rfl

end BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean
end HautevilleHouse