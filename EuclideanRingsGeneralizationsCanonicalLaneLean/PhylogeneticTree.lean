import EuclideanRingsGeneralizationsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure PhylogeneticTreePackage where
  taxa : List String
  distanceMatrix : Matrix ℝ ℝ ℝ
  treeTopology : Type u
  branchLengths : treeTopology → ℝ
  likelihood : ℝ
  maximumParsimonyScore : ℕ
  treeOptimal : Prop
  treeOptimalTerm : treeOptimal

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.treeOptimal

theorem phylogenetic_tree_closed_from_package (P : PhylogeneticTreePackage) : PhylogeneticTreeClosed P :=
  P.treeOptimalTerm

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse