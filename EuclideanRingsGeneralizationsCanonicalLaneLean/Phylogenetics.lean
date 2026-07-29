import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure PhylogeneticsPackage where
  phylogeneticTree : Type u
  evolutionaryDistance : Type v
  treeReconstructed : Prop
  distanceConsistent : Prop
  branchingOrderDetermined : Prop
  ancestralSequencesInferred : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  treeReconstructedClosed : P.treeReconstructed
  distanceConsistentClosed : P.distanceConsistent
  branchingOrderDeterminedClosed : P.branchingOrderDetermined
  ancestralSequencesInferredClosed : P.ancestralSequencesInferred

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.treeReconstructed ∧ P.distanceConsistent ∧
  P.branchingOrderDetermined ∧ P.ancestralSequencesInferred

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage)
    (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.treeReconstructedClosed
    (And.intro E.distanceConsistentClosed
      (And.intro E.branchingOrderDeterminedClosed E.ancestralSequencesInferredClosed))

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse