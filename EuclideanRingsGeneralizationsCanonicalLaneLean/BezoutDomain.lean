import canonicalLaneMathlib.AdmissibleClass
import EuclideanRingsGeneralizationsCanonicalLaneLean.EuclideanRingStructure

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure BezoutDomain extends EuclideanRingStructure where
  bezoutProperty : ∀ a b : carrier, ∃ s t : carrier, add (mul s a) (mul t b) = gcd a b
  gcdDefined : carrier → carrier → carrier
  gcdIsGCD : ∀ a b : carrier, gcdDefined a b ∣ a ∧ gcdDefined a b ∣ b ∧ ∀ d : carrier, (d ∣ a) → (d ∣ b) → d ∣ gcdDefined a b

def BezoutDomainClosed (B : BezoutDomain) : Prop := True

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse