import MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean.RnaExportBridgeLemmas

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleRnaExportObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleRnaExportObject) :
    gateClosed A := by
  exact A.gateWitness

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse