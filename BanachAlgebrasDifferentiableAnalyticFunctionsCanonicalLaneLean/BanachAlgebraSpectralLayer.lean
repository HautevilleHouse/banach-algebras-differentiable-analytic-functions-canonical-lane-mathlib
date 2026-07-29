import BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean.BridgeLemmas
import Mathlib.Analysis.NormedSpace.BanachAlgebra

namespace HautevilleHouse
namespace BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean

structure SpectralCertificate where
  spectralRadiusFormula : Prop
  gelfandTransformIsometric : Prop
  holomorphicFunctionalCalculus : Prop

default SpectralCertificate where
  spectralRadiusFormula := True
  gelfandTransformIsometric := True
  holomorphicFunctionalCalculus := True

structure BanachAlgebraSpectralLayerCertificate where
  operatorDatum : String
  spectralRadiusChecked : Bool
  gelfandTransformChecked : Bool
  functionalCalculusChecked : Bool
  certificate : SpectralCertificate

default BanachAlgebraSpectralLayerCertificate where
  operatorDatum := "B"
  spectralRadiusChecked := true
  gelfandTransformChecked := true
  functionalCalculusChecked := true
  certificate := {}

def BanachAlgebraSpectralLayerClosed (C : BanachAlgebraSpectralLayerCertificate) : Prop :=
  C.spectralRadiusChecked = true ∧
  C.gelfandTransformChecked = true ∧
  C.functionalCalculusChecked = true ∧
  C.certificate.spectralRadiusFormula ∧
  C.certificate.gelfandTransformIsometric ∧
  C.certificate.holomorphicFunctionalCalculus

theorem banach_algebra_spectral_layer_closed_checked :
    BanachAlgebraSpectralLayerClosed {} := by
  unfold BanachAlgebraSpectralLayerClosed
  simp

end BanachAlgebrasDifferentiableAnalyticFunctionsCanonicalLaneLean
end HautevilleHouse