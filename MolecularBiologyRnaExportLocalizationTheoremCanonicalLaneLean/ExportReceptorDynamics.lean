import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure ExportReceptorPackage where
  receptorTypes : Type u
  bindingAffinity : receptorTypes → ℝ
  transportCapacity : ℝ
  saturationThreshold : ℝ

def ExportReceptorDynamicsClosed (P : ExportReceptorPackage) : Prop :=
  P.bindingAffinity P.receptorTypes > 0 ∧ P.transportCapacity > 0

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse
