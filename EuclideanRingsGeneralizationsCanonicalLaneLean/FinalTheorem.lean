import EuclideanRingsGeneralizationsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

def ConstrainedEuclideanRingsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_euclidean_rings_endgame (A : AdmissibleClass) :
    ConstrainedEuclideanRingsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse