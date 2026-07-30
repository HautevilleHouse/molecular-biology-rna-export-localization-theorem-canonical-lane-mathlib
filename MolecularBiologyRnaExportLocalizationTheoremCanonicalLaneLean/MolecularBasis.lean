import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure RnaExportLocalizationObject where
  cellType : Type u
  nucleusCompartment : Type v
  cytoplasmCompartment : Type w
  rnaSpecies : Type x
  transportReceptor : Type y
  nuclearExportSignal : Prop
  receptorRecognition : Prop
  exportPathwayActive : Prop
  localizationCompetent : Prop

structure RnaExportLocalizationAdmittedObject where
  rnaObject : RnaExportLocalizationObject
  exportVerified : Prop
  localizationVerified : Prop
  exportPathwayClosed : exportVerified ∧ localizationVerified
  conclusion : exportPathwayClosed

def RnaExportWitnessClosed (O : RnaExportLocalizationAdmittedObject) : Prop :=
  O.exportPathwayClosed

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse