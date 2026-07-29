import EuclideanRingsGeneralizationsCanonicalLaneLean.AdmissibleClass

/-!
# Linkage Analysis Package
-/

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure LinkageAnalysisPackage where
  recombinationFraction : Prop
  lodScore : Prop
  linkageEvidence : Prop
  geneticMap : Type u

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.lodScore ∧ L.linkageEvidence

theorem linkage_analysis_closed (L : LinkageAnalysisPackage) (h_lod : L.lodScore) (h_link : L.linkageEvidence) :
    LinkageAnalysisClosed L := by
  exact And.intro h_lod h_link

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse
