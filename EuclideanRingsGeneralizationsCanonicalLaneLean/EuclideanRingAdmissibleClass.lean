import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure EuclideanAdmittedObject where
  carrier : Type
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  euclideanFunction : carrier → ℕ
  divisionProperty : ∀ a b : carrier, b ≠ zero → ∃ q r : carrier, a = multiplication q b + r ∧ (euclideanFunction r < euclideanFunction b ∨ r = zero)
  gcdConstruction : ∀ a b : carrier, ∃ d : carrier, d = multiplication (someX a b) a + multiplication (someY a b) b
  where
    someX : carrier → carrier → carrier
    someY : carrier → carrier → carrier

structure AdmissibleClass where
  object : EuclideanAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EuclideanWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse