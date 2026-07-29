import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure AdmissibleClass where
  object : EuclideanRingStructure
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EuclideanRingClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse