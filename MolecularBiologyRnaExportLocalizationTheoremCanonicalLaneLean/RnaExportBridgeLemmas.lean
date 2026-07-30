import MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean.RnaExportAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleRnaExportObject) : Prop :=
  A.object.nuclearExportPathway ∧ A.object.localizationPattern

theorem bridge_from_admissible_class (A : AdmissibleRnaExportObject) :
    bridgeClosed A := by
  exact And.intro A.object.nuclearExportPathway A.object.localizationPattern

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse