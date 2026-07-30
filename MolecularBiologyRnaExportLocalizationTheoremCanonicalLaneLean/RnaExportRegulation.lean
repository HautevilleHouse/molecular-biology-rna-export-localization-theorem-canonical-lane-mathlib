import MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean.RnaExportLocalizationPathway

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure ExportRegulatoryElement where
  cisElement : Type
  transFactor : Type
  bindingAffinity : Prop
  regulatoryMechanism : Prop

structure RnaExportRegulation where
  nuclearRetentionSignal : Prop
  exportCompetenceCheckpoint : Prop
  alternativeSplicingIsoform : Prop
  mirnaRegulation : Prop

structure RnaExportRegulationEvidence (R : RnaExportRegulation) where
  nuclearRetentionSignalClosed : R.nuclearRetentionSignal
  exportCompetenceCheckpointClosed : R.exportCompetenceCheckpoint
  alternativeSplicingIsoformClosed : R.alternativeSplicingIsoform
  mirnaRegulationClosed : R.mirnaRegulation

def RnaExportRegulationClosed (R : RnaExportRegulation) : Prop :=
  R.nuclearRetentionSignal ∧ R.exportCompetenceCheckpoint ∧
  R.alternativeSplicingIsoform ∧ R.mirnaRegulation

theorem rna_export_regulation_closed_from_evidence
    (R : RnaExportRegulation) (E : RnaExportRegulationEvidence R) :
    RnaExportRegulationClosed R := by
  exact And.intro E.nuclearRetentionSignalClosed
    (And.intro E.exportCompetenceCheckpointClosed
      (And.intro E.alternativeSplicingIsoformClosed E.mirnaRegulationClosed))

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse