import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure RnaExportLocalizationTheorem where
  cell : Type u
  nucleus : Set cell
  cytoplasm : Set cell
  rnaSpecies : Type v
  exportReceptors : Type w
  localizationSignal : Prop
  exportCompetent : rnaSpecies → Prop
  localizationPattern : Prop

def RnaExportLocalizationTheoremClosed (T : RnaExportLocalizationTheorem) : Prop :=
  T.localizationSignal ∧ T.localizationPattern

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse
