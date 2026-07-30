import MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean.MathlibObjects

/-!
# AdmissibleClass for RNA Export Localization Theorem

Defines the constraint structure for admissibility in the RNA export localization domain.
-/

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : RnaExportAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RnaExportWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse