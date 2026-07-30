import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure LocalizationSignalRecognition where
  signalSequence : String
  bindingProtein : Type u
  affinity : ℝ
  specificity : Prop
  downstreamPathwayActivated : Prop

def LocalizationSignalRecognitionClosed (S : LocalizationSignalRecognition) : Prop :=
  S.affinity > 0 ∧ S.specificity

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse
