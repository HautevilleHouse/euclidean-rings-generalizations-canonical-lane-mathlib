import EuclideanRingsGeneralizationsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EuclideanRingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse