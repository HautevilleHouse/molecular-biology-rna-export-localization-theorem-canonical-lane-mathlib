import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure RanGtpCyclePackage where
  ranGtp : Type u
  ranGdp : Type v
  ranGap : Type w
  ranGef : Type x
  gtpHydrolysis : Prop
  nucleotideExchange : Prop
  gdpBoundForm : Prop
  gtpBoundForm : Prop

structure RanGtpCycleEvidence (R : RanGtpCyclePackage) where
  gtpHydrolysisClosed : R.gtpHydrolysis
  nucleotideExchangeClosed : R.nucleotideExchange
  gdpBoundFormClosed : R.gdpBoundForm
  gtpBoundFormClosed : R.gtpBoundForm

def RanGtpCycleClosed (R : RanGtpCyclePackage) : Prop :=
  R.gtpHydrolysis ∧ R.nucleotideExchange ∧ R.gdpBoundForm ∧ R.gtpBoundForm

theorem ran_gtp_cycle_closed_from_evidence
    (R : RanGtpCyclePackage) (E : RanGtpCycleEvidence R) :
    RanGtpCycleClosed R := by
  exact And.intro E.gtpHydrolysisClosed
    (And.intro E.nucleotideExchangeClosed
      (And.intro E.gdpBoundFormClosed E.gtpBoundFormClosed))

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse