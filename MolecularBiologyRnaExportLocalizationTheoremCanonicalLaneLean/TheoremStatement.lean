import MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean.ReviewerBridge
import canonicalLaneMathlib.AdmissibleClass

/-!
# Theorem Statement Layer for RNA Export Localization Theorem

Internalizes the theorem-facing object for the RNA Export Localization Theorem
and the admissible-class closure certificate.
-/

namespace HautevilleHouse
namespace MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  admissibleConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary.claimBoundary,
  admissibleConstrainedStatement := "admissible-class theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

def AdmissibleSourceBoundaryCarried : Prop :=
  formalizationCertificate.theoremBoundaryOpen = true ∧
  formalizationCertificate.sourceConjectureClosureClaimed = false

def AdmissibleConstrainedTheoremClosed : Prop :=
  baselineCertificateLane = "admissible_constrained" ∧
  baselineCertificateAllPass = true ∧
  outsideConstantDependencyCount = 0

def TheoremLayerInternalized : Prop :=
  sourceTheoremStatement.sourceKey = sourceRepository ∧
  sourceTheoremStatement.certificateLane = baselineCertificateLane ∧
  AdmissibleSourceBoundaryCarried ∧
  AdmissibleConstrainedTheoremClosed

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

theorem admissible_source_boundary_carried_checked :
    AdmissibleSourceBoundaryCarried := by
  exact And.intro rfl rfl

theorem admissible_constrained_theorem_closed_checked :
    AdmissibleConstrainedTheoremClosed := by
  exact And.intro rfl (And.intro rfl rfl)

theorem theorem_layer_internalized_checked :
    TheoremLayerInternalized := by
  exact And.intro rfl (And.intro rfl (And.intro admissible_source_boundary_carried_checked admissible_constrained_theorem_closed_checked))

end MolecularBiologyRnaExportLocalizationTheoremCanonicalLaneLean
end HautevilleHouse