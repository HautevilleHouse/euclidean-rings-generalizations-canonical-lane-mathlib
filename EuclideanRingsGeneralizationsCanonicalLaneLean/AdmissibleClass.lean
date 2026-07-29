import EuclideanRingsGeneralizationsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure AdmissibleClass where
  object : EuclideanRingsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EuclideanRingsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse