import EuclideanRingsGeneralizationsCanonicalLaneLean.AdmissibleClass

/-!
# Sequence Alignment Package
-/

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure SequenceAlignmentPackage where
  substitutionMatrix : Type u
  gapPenalty : Prop
  alignmentScore : Prop
  optimalAlignment : Prop

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.alignmentScore ∧ S.optimalAlignment

theorem sequence_alignment_closed (S : SequenceAlignmentPackage) (h_score : S.alignmentScore) (h_opt : S.optimalAlignment) :
    SequenceAlignmentClosed S := by
  exact And.intro h_score h_opt

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse
