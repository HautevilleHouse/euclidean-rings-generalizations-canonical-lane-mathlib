import EuclideanRingsGeneralizationsCanonicalLaneLean.AdmissibleClass

/-!
# Phylogenetics Package
-/

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure PhylogeneticsPackage where
  evolutionaryTree : Type u
  molecularClock : Prop
  phylogeneticInference : Prop
  treeLikelihood : Prop

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.phylogeneticInference ∧ P.treeLikelihood

theorem phylogenetics_closed (P : PhylogeneticsPackage) (h_infer : P.phylogeneticInference) (h_like : P.treeLikelihood) :
    PhylogeneticsClosed P := by
  exact And.intro h_infer h_like

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse
