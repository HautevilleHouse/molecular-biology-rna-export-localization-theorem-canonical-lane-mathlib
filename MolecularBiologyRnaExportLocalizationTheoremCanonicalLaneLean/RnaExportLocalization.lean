import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure RnaExportLocalizationPackage where
  carrierProtein : Type u
  rnaMolecule : Type v
  nuclearExportSignal : Prop
  exportReceptorBinding : Prop
  cytoplasmicLocalization : Prop
  ranGtpCycle : Prop
  nuclearPoreInteraction : Prop

structure RnaExportLocalizationEvidence (P : RnaExportLocalizationPackage) where
  nuclearExportSignalClosed : P.nuclearExportSignal
  exportReceptorBindingClosed : P.exportReceptorBinding
  cytoplasmicLocalizationClosed : P.cytoplasmicLocalization
  ranGtpCycleClosed : P.ranGtpCycle
  nuclearPoreInteractionClosed : P.nuclearPoreInteraction

def RnaExportLocalizationClosed (P : RnaExportLocalizationPackage) : Prop :=
  P.nuclearExportSignal ∧ P.exportReceptorBinding ∧ P.cytoplasmicLocalization ∧
  P.ranGtpCycle ∧ P.nuclearPoreInteraction

theorem rna_export_localization_closed_from_evidence
    (P : RnaExportLocalizationPackage) (E : RnaExportLocalizationEvidence P) :
    RnaExportLocalizationClosed P := by
  exact And.intro E.nuclearExportSignalClosed
    (And.intro E.exportReceptorBindingClosed
      (And.intro E.cytoplasmicLocalizationClosed
        (And.intro E.ranGtpCycleClosed E.nuclearPoreInteractionClosed)))

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse