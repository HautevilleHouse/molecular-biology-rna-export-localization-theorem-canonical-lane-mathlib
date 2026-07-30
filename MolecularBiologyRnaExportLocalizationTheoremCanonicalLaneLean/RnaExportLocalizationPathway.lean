import MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean.RnaExportAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure NuclearExportReceptor where
  receptorType : Type
  cargoBindingDomain : Prop
  nlsRecognition : Prop
  exportCompetence : Prop

structure RnaExportPathway where
  receptor : NuclearExportReceptor
  ranGtpCycle : Prop
  nuclearPoreDocking : Prop
  cytoplasmicRelease : Prop

structure RnaLocalizationMachinery where
  zipcodeBindingProtein : Type
  motorProteinAdaptor : Prop
  cytoskeletalTrack : Prop
  anchoringFactor : Prop

structure RnaExportLocalizationEvidence (P : RnaExportPathway) (L : RnaLocalizationMachinery) where
  receptorExportClosed : P.receptor.exportCompetence
  ranCycleClosed : P.ranGtpCycle
  poreDockingClosed : P.nuclearPoreDocking
  releaseClosed : P.cytoplasmicRelease
  zipcodeBindingClosed : L.zipcodeBindingProtein
  motorAdaptorClosed : L.motorProteinAdaptor
  cytoskeletalTrackClosed : L.cytoskeletalTrack
  anchoringFactorClosed : L.anchoringFactor

def RnaExportLocalizationClosed (P : RnaExportPathway) (L : RnaLocalizationMachinery) : Prop :=
  P.receptor.exportCompetence ∧ P.ranGtpCycle ∧ P.nuclearPoreDocking ∧ P.cytoplasmicRelease ∧
  L.zipcodeBindingProtein ∧ L.motorProteinAdaptor ∧ L.cytoskeletalTrack ∧ L.anchoringFactor

theorem rna_export_localization_closed_from_evidence
    (P : RnaExportPathway) (L : RnaLocalizationMachinery)
    (E : RnaExportLocalizationEvidence P L) : RnaExportLocalizationClosed P L := by
  exact And.intro E.receptorExportClosed
    (And.intro E.ranCycleClosed
      (And.intro E.poreDockingClosed
        (And.intro E.releaseClosed
          (And.intro E.zipcodeBindingClosed
            (And.intro E.motorAdaptorClosed
              (And.intro E.cytoskeletalTrackClosed E.anchoringFactorClosed))))))

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse