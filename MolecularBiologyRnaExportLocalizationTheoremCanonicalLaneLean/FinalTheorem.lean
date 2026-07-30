import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

def ConstrainedRnaExportLocalizationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_rna_export_localization_endgame (A : AdmissibleClass) :
    ConstrainedRnaExportLocalizationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse