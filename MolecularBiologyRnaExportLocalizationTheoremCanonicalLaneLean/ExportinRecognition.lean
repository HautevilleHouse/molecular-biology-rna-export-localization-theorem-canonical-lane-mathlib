import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure ExportinRecognition where
  exportinFamily : Type u
  ranGTP : Type v
  cargoRecognitionDomain : Type w
  ranBinding : Prop
  cargoBinding : Prop
  conformationalChange : Prop
  complexStability : Prop

structure ExportinRecognitionEvidence (E : ExportinRecognition) where
  ranBindingClosed : E.ranBinding
  cargoBindingClosed : E.cargoBinding
  conformationalChangeClosed : E.conformationalChange
  complexStabilityClosed : E.complexStability

def ExportinRecognitionClosed (E : ExportinRecognition) : Prop :=
  E.ranBinding ∧ E.cargoBinding ∧ E.conformationalChange ∧ E.complexStability

theorem exportin_recognition_closed_from_evidence (E : ExportinRecognition) (Ev : ExportinRecognitionEvidence E) :
    ExportinRecognitionClosed E := by
  exact And.intro Ev.ranBindingClosed (And.intro Ev.cargoBindingClosed (And.intro Ev.conformationalChangeClosed Ev.complexStabilityClosed))

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse