import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure EuclideanRingStructure where
  carrier : Type u
  zero : carrier
  one : carrier
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  neg : carrier → carrier
  euclideanFunction : carrier → ℕ
  addAssoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  addComm : ∀ a b : carrier, add a b = add b a
  zeroAdd : ∀ a : carrier, add zero a = a
  addZero : ∀ a : carrier, add a zero = a
  addNeg : ∀ a : carrier, add a (neg a) = zero
  mulAssoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  mulOne : ∀ a : carrier, mul a one = a
  oneMul : ∀ a : carrier, mul one a = a
  distribLeft : ∀ a b c : carrier, mul a (add b c) = add (mul a b) (mul a c)
  distribRight : ∀ a b c : carrier, mul (add a b) c = add (mul a c) (mul b c)
  euclideanDiv : ∀ a b : carrier, b ≠ zero → (∃ q r : carrier, a = add (mul q b) r ∧ (r = zero ∨ euclideanFunction r < euclideanFunction b))
  euclideanSub : ∀ a b : carrier, b ≠ zero → (∃ q r : carrier, a = add (mul q b) r ∧ (r = zero ∨ euclideanFunction r < euclideanFunction b))

def EuclideanRingClosed (E : EuclideanRingStructure) : Prop := True

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse