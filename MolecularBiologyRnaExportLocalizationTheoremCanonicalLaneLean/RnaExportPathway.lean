import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure RnaExportPathway where
  transcriptType : Type u
  adaptorProteins : Type v
  receptorProteins : Type w
  exportSignal : Prop
  adaptorBinding : Prop
  receptorDocking : Prop
  translocation : Prop

structure RnaExportPathwayEvidence (P : RnaExportPathway) where
  exportSignalClosed : P.exportSignal
  adaptorBindingClosed : P.adaptorBinding
  receptorDockingClosed : P.receptorDocking
  translocationClosed : P.translocation

def RnaExportPathwayClosed (P : RnaExportPathway) : Prop :=
  P.exportSignal ∧ P.adaptorBinding ∧ P.receptorDocking ∧ P.translocation

theorem rna_export_pathway_closed_from_evidence (P : RnaExportPathway) (E : RnaExportPathwayEvidence P) :
    RnaExportPathwayClosed P := by
  exact And.intro E.exportSignalClosed (And.intro E.adaptorBindingClosed (And.intro E.receptorDockingClosed E.translocationClosed))

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse