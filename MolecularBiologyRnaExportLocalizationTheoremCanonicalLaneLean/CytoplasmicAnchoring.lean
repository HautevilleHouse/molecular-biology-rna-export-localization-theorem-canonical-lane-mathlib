import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure CytoplasmicAnchoring where
  anchorProteins : Type u
  cytoskeletonInteraction : Prop
  anchoringStrength : ℝ
  releaseMechanism : Prop

def CytoplasmicAnchoringClosed (A : CytoplasmicAnchoring) : Prop :=
  A.anchoringStrength > 0 ∧ A.releaseMechanism

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse
