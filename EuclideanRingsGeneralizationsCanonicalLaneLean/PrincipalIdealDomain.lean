import canonicalLaneMathlib.AdmissibleClass
import EuclideanRingsGeneralizationsCanonicalLaneLean.BezoutDomain

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure PrincipalIdealDomain extends BezoutDomain where
  idealGenerated : ∀ I : Set carrier, (∀ x y ∈ I, x + y ∈ I) → (∀ x ∈ I, ∀ r : carrier, r * x ∈ I) → 
    (∃ a : carrier, I = {x | a ∣ x})

def PrincipalIdealDomainClosed (P : PrincipalIdealDomain) : Prop := True

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse