import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure EuclideanRingStructure where
  carrier : Type u
  zero : carrier
  one : carrier
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  degFunc : carrier → Nat
  divAlg : carrier → carrier → carrier
  remAlg : carrier → carrier → carrier
  isCommRing : Prop
  zeroOneNeq : zero ≠ one
  addAssoc : ∀ a b c, add (add a b) c = add a (add b c)
  addComm : ∀ a b, add a b = add b a
  zeroAdd : ∀ a, add zero a = a
  addInv : ∀ a, ∃ b, add a b = zero
  mulAssoc : ∀ a b c, mul (mul a b) c = mul a (mul b c)
  mulComm : ∀ a b, mul a b = mul b a
  oneMul : ∀ a, mul one a = a
  mulZero : ∀ a, mul a zero = zero
  leftDistrib : ∀ a b c, mul a (add b c) = add (mul a b) (mul a c)
  rightDistrib : ∀ a b c, mul (add a b) c = add (mul a c) (mul b c)
  divisionProperty : ∀ a b, b ≠ zero → exists q r,
    a = add (mul q b) r ∧ (r = zero ∨ degFunc r < degFunc b)

structure EuclideanRingEvidence (R : EuclideanRingStructure) where
  isCommRingClosed : R.isCommRing
  zeroOneNeqClosed : R.zeroOneNeq
  degFuncWellDefined : ∀ a b, a ≠ R.zero → R.degFunc (R.mul a b) ≥ R.degFunc a
  divisionAlgorithmClosed : ∀ a b, b ≠ R.zero →
    ((q : R.carrier) × (r : R.carrier) ×
      (R.add a (R.mul (R.neg q) b) = r) ∧ (R.remAlg a b = r)) ∧
    (R.remAlg a b = R.zero ∨ R.degFunc (R.remAlg a b) < R.degFunc b)

def EuclideanRingClosed (R : EuclideanRingStructure) : Prop :=
  R.isCommRing ∧ R.zeroOneNeq ∧
  (∀ a b, a ≠ R.zero → R.degFunc (R.mul a b) ≥ R.degFunc a) ∧
  (∀ a b, b ≠ R.zero → (R.remAlg a b = R.zero ∨ R.degFunc (R.remAlg a b) < R.degFunc b))

theorem euclidean_ring_closed_from_evidence (R : EuclideanRingStructure) (E : EuclideanRingEvidence R) :
    EuclideanRingClosed R := by
  refine And.intro E.isCommRingClosed (And.intro E.zeroOneNeqClosed
    (And.intro E.degFuncWellDefined ?_))
  intro a b hb
  exact (E.divisionAlgorithmClosed a b hb).2

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse