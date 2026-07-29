import EuclideanRingsGeneralizationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure EuclideanDomainPackage where
  carrier : Type u
  zero : carrier
  one : carrier
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  euclideanFunction : carrier → ℕ
  divisionAlgorithm : ∀ a b, b ≠ zero → ∃ q r, a = multiplication q b + addition r ∧ (euclideanFunction r < euclideanFunction b ∨ r = zero)
  multiplicativeIdentity : ∀ a, multiplication a one = a ∧ multiplication one a = a
  additiveGroup : AddGroup carrier

def EuclideanDomainClosed (P : EuclideanDomainPackage) : Prop :=
  ∀ a b, P.divisionAlgorithm a b

theorem euclidean_domain_closed_from_package (P : EuclideanDomainPackage) : EuclideanDomainClosed P :=
  λ a b hb => P.divisionAlgorithm a b hb

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse