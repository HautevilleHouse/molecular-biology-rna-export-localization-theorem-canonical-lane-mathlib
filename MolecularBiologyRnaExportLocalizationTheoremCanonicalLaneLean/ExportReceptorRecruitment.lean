import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure ExportReceptorRecruitmentPackage where
  exportReceptor : Type u
  rnaBindingDomain : Prop
  nuclearExportSignalRecognition : Prop
  cargoLoading : Prop
  conformationalChange : Prop
  energyRegulation : Prop

structure ExportReceptorRecruitmentEvidence (E : ExportReceptorRecruitmentPackage) where
  rnaBindingDomainClosed : E.rnaBindingDomain
  nuclearExportSignalRecognitionClosed : E.nuclearExportSignalRecognition
  cargoLoadingClosed : E.cargoLoading
  conformationalChangeClosed : E.conformationalChange
  energyRegulationClosed : E.energyRegulation

def ExportReceptorRecruitmentClosed (E : ExportReceptorRecruitmentPackage) : Prop :=
  E.rnaBindingDomain ∧ E.nuclearExportSignalRecognition ∧
  E.cargoLoading ∧ E.conformationalChange ∧ E.energyRegulation

theorem export_receptor_recruitment_closed_from_evidence
    (E : ExportReceptorRecruitmentPackage) (Ev : ExportReceptorRecruitmentEvidence E) :
    ExportReceptorRecruitmentClosed E := by
  exact And.intro Ev.rnaBindingDomainClosed
    (And.intro Ev.nuclearExportSignalRecognitionClosed
      (And.intro Ev.cargoLoadingClosed
        (And.intro Ev.conformationalChangeClosed Ev.energyRegulationClosed)))

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse