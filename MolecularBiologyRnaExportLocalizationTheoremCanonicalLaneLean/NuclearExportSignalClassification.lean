import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean.ExportPathwayEvidence

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure NuclearExportSignalClassificationPackage where
  signalSequence : String
  receptorMatch : Prop
  signalCompetent : Prop
  signalMapped : signalSequence.length > 0 ∧ receptorMatch

structure NuclearExportSignalClassificationEvidence (C : NuclearExportSignalClassificationPackage) where
  signalSequenceClosed : C.signalSequence.length > 0
  receptorMatchClosed : C.receptorMatch
  signalMappedClosed : C.signalMapped

def NuclearExportSignalClassificationClosed (C : NuclearExportSignalClassificationPackage) : Prop :=
  C.signalSequence.length > 0 ∧ C.receptorMatch ∧ C.signalMapped

theorem nuclear_export_signal_classification_closed_from_evidence
    (C : NuclearExportSignalClassificationPackage)
    (E : NuclearExportSignalClassificationEvidence C) :
    NuclearExportSignalClassificationClosed C := by
  exact And.intro E.signalSequenceClosed (And.intro E.receptorMatchClosed E.signalMappedClosed)

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse