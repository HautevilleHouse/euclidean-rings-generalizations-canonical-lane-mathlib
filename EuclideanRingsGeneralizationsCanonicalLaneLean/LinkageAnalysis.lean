import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure LinkageAnalysisPackage where
  recombinationFraction : Type u
  lodScore : Type v
  linkageEvidence : Prop
  recombinationFractionEstimated : Prop
  lodThresholdExceeded : Prop
  markerOrderConsistent : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  linkageEvidenceClosed : L.linkageEvidence
  recombinationFractionEstimatedClosed : L.recombinationFractionEstimated
  lodThresholdExceededClosed : L.lodThresholdExceeded
  markerOrderConsistentClosed : L.markerOrderConsistent

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.linkageEvidence ∧ L.recombinationFractionEstimated ∧
  L.lodThresholdExceeded ∧ L.markerOrderConsistent

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage)
    (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro E.linkageEvidenceClosed
    (And.intro E.recombinationFractionEstimatedClosed
      (And.intro E.lodThresholdExceededClosed E.markerOrderConsistentClosed))

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse