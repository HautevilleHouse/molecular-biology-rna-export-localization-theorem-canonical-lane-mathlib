import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure RnaExportObject where
  cellType : Type
  rnaSpecies : Type
  nuclearExportPathway : Prop
  localizationPattern : Prop

structure AdmissibleRnaExportObject where
  object : RnaExportObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleRnaExportObject) : Prop :=
  (A.object.nuclearExportPathway ∧ A.object.localizationPattern) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse