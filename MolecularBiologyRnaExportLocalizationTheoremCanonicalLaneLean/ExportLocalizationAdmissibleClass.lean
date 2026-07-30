import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure RnaExportAdmittedObject where
  cellType : Type
  nuclearCompartment : Type
  cytoplasmicCompartment : Type
  exportReceptor : Type
  cargoNucleoporinBinding : Prop
  localizationCapacity : Prop
  conclusion : cargoNucleoporinBinding ∧ localizationCapacity

structure AdmissibleClass where
  object : RnaExportAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.cargoNucleoporinBinding ∧ A.object.localizationCapacity) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse