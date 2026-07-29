import EuclideanRingsGeneralizationsCanonicalLaneLean.BezoutIdentityPackage

/-!
# Unique Factorization Package
-/

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure UniqueFactorizationPackage (A : EuclideanAdmittedObject) (B : BezoutIdentityPackage A) where
  irreducibleFactorization : ∀ a : A.carrier, a ≠ A.zero → (∃ (n : ℕ) (irrs : Fin n → A.carrier), a = ∏ i : Fin n, irrs i ∧ ∀ i : Fin n, Irreducible (irrs i))
  where
    Irreducible (x : A.carrier) : Prop := ∀ a b : A.carrier, x = A.multiplication a b → (IsUnit a ∨ IsUnit b)
    IsUnit (x : A.carrier) : Prop := ∃ y : A.carrier, A.multiplication x y = A.one
  uniquenessUpToAssociates : ∀ (n m : ℕ) (irs : Fin n → A.carrier) (jrs : Fin m → A.carrier),
    (∀ i, Irreducible (irs i)) → (∀ j, Irreducible (jrs j)) →
    (∏ i, irs i) = (∏ j, jrs j) → n = m ∧ ∃ σ : Equiv (Fin n) (Fin n), ∀ i, Associated (irs i) (jrs (σ i))
  where
    Associated (x y : A.carrier) : Prop := ∃ u : A.carrier, IsUnit u ∧ x = A.multiplication u y

structure UniqueFactorizationEvidence (A : EuclideanAdmittedObject) (B : BezoutIdentityPackage A) (U : UniqueFactorizationPackage A B) where
  irreducibleFactorizationClosed : U.irreducibleFactorization
  uniquenessUpToAssociatesClosed : U.uniquenessUpToAssociates

def UniqueFactorizationClosed (A : EuclideanAdmittedObject) (B : BezoutIdentityPackage A) (U : UniqueFactorizationPackage A B) : Prop :=
  U.irreducibleFactorization ∧ U.uniquenessUpToAssociates

theorem unique_factorization_closed_from_evidence (A : EuclideanAdmittedObject) (B : BezoutIdentityPackage A) (U : UniqueFactorizationPackage A B) (E : UniqueFactorizationEvidence A B U) : UniqueFactorizationClosed A B U := by
  exact And.intro E.irreducibleFactorizationClosed E.uniquenessUpToAssociatesClosed

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse