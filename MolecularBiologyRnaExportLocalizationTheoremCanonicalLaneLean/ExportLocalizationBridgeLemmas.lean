import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlib

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.cargoNucleoporinBinding ∧ A.object.localizationCapacity

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse