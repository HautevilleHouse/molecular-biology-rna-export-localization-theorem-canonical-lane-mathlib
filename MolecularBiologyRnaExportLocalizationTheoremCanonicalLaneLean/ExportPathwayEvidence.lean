import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean.MolecularBasis

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure ExportPathwayEvidencePackage (O : RnaExportLocalizationAdmittedObject) where
  exportVerifiedClosed : O.exportVerified
  localizationVerifiedClosed : O.localizationVerified

def ExportPathwayEvidenceClosed (O : RnaExportLocalizationAdmittedObject) : Prop :=
  O.exportVerified ∧ O.localizationVerified

theorem export_pathway_closed_from_evidence
    (O : RnaExportLocalizationAdmittedObject) (E : ExportPathwayEvidencePackage O) :
    ExportPathwayEvidenceClosed O := by
  exact And.intro E.exportVerifiedClosed E.localizationVerifiedClosed

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse