import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure NuclearPoreComplex where
  carrier : Type u
  topology : TopologicalSpace carrier
  nucleoporins : Type v
  basketFilaments : Type w
  centralChannel : Type x
  filamentDensity : Prop
  basketFilamentDistribution : Prop
  centralChannelOpen : Prop

structure NuclearPoreComplexEvidence (N : NuclearPoreComplex) where
  filamentDensityClosed : N.filamentDensity
  basketFilamentDistributionClosed : N.basketFilamentDistribution
  centralChannelOpenClosed : N.centralChannelOpen

def NuclearPoreComplexClosed (N : NuclearPoreComplex) : Prop :=
  N.filamentDensity ∧ N.basketFilamentDistribution ∧ N.centralChannelOpen

theorem nuclear_pore_complex_closed_from_evidence (N : NuclearPoreComplex) (E : NuclearPoreComplexEvidence N) :
    NuclearPoreComplexClosed N := by
  exact And.intro E.filamentDensityClosed (And.intro E.basketFilamentDistributionClosed E.centralChannelOpenClosed)

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse