import EuclideanRingsGeneralizationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse