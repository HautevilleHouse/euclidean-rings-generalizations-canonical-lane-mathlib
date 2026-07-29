import canonicalLaneMathlib.AdmissibleClass
import EuclideanRingsGeneralizationsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse