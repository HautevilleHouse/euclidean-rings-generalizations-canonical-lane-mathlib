import EuclideanRingsGeneralizationsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure AdmissibleClass where
  object : EuclideanRingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EuclideanRingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse
