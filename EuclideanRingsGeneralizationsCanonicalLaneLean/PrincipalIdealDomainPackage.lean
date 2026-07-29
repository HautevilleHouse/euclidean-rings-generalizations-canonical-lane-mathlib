import EuclideanRingsGeneralizationsCanonicalLaneLean.UniqueFactorizationPackage

/-!
# Principal Ideal Domain Package
-/

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure PrincipalIdealDomainPackage (A : EuclideanAdmittedObject) (B : BezoutIdentityPackage A) (U : UniqueFactorizationPackage A B) where
  everyIdealPrincipal : ∀ (I : Set A.carrier), IsAddSubgroup I → (∀ x y, x ∈ I → y ∈ I → A.addition x y ∈ I) → (∀ x ∈ I, ∀ r : A.carrier, A.multiplication r x ∈ I) → ∃ a : A.carrier, I = {x | ∃ r : A.carrier, x = A.multiplication r a}
  where
    IsAddSubgroup (I : Set A.carrier) : Prop := A.zero ∈ I ∧ (∀ x ∈ I, -x ∈ I) ∧ (∀ x y, x ∈ I → y ∈ I → A.addition x y ∈ I)

structure PrincipalIdealEvidence (A : EuclideanAdmittedObject) (B : BezoutIdentityPackage A) (U : UniqueFactorizationPackage A B) (P : PrincipalIdealDomainPackage A B U) where
  everyIdealPrincipalClosed : P.everyIdealPrincipal

def PrincipalIdealDomainClosed (A : EuclideanAdmittedObject) (B : BezoutIdentityPackage A) (U : UniqueFactorizationPackage A B) (P : PrincipalIdealDomainPackage A B U) : Prop :=
  P.everyIdealPrincipal

theorem principal_ideal_domain_closed_from_evidence (A : EuclideanAdmittedObject) (B : BezoutIdentityPackage A) (U : UniqueFactorizationPackage A B) (P : PrincipalIdealDomainPackage A B U) (E : PrincipalIdealEvidence A B U P) : PrincipalIdealDomainClosed A B U P := by
  exact E.everyIdealPrincipalClosed

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse