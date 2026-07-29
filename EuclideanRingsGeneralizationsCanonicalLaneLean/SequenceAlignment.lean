import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure SequenceAlignmentPackage where
  alignmentMatrix : Type u
  similarityScore : Type v
  gapPenalty : Type w
  alignmentOptimal : Prop
  subsequenceMatch : Prop
  indelAccounted : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  alignmentOptimalClosed : S.alignmentOptimal
  subsequenceMatchClosed : S.subsequenceMatch
  indelAccountedClosed : S.indelAccounted

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.alignmentOptimal ∧ S.subsequenceMatch ∧ S.indelAccounted

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage)
    (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.alignmentOptimalClosed
    (And.intro E.subsequenceMatchClosed E.indelAccountedClosed)

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse