import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure TransportKinetics where
  exportRate : ℝ
  importRate : ℝ
  diffusionCoefficient : ℝ
  activeTransportVelocity : ℝ
  localizationHalfLife : ℝ

def TransportKineticsClosed (K : TransportKinetics) : Prop :=
  K.exportRate > 0 ∧ K.localizationHalfLife > 0

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse
