import canonicalLaneMathlib.AdmissibleClass
import EuclideanRingsGeneralizationsCanonicalLaneLean.PrincipalIdealDomain

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure UniqueFactorizationDomain extends PrincipalIdealDomain where
  factorizationExists : ∀ a : carrier, a ≠ zero → (∃ (n : ℕ) (p : ℕ → carrier) (e : ℕ → ℕ), 
    a = mul (unitFactor a) (∏_{i=0}^{n-1} p i ^ e i) ∧
    ∀ i, Irreducible (p i) ∧ (∀ j ≠ i, ¬ Associated (p i) (p j)))
  unitFactor : carrier → carrier
  Irreducible (x : carrier) : Prop := ¬ IsUnit x ∧ ∀ a b, x = mul a b → IsUnit a ∨ IsUnit b
  IsUnit (x : carrier) : Prop := ∃ y : carrier, mul x y = one
  Associated (x y : carrier) : Prop := ∃ u : carrier, IsUnit u ∧ x = mul u y

def UniqueFactorizationDomainClosed (U : UniqueFactorizationDomain) : Prop := True

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse