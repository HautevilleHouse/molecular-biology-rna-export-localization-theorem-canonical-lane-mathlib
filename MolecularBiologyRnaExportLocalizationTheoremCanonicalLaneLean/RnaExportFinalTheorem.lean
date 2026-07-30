import MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean.RnaExportGateLemmas

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

def ConstrainedRnaExportClosure (A : AdmissibleRnaExportObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_rna_export_endgame (A : AdmissibleRnaExportObject) :
    ConstrainedRnaExportClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse