import EuclideanRingsGeneralizationsCanonicalLaneLean.EuclideanRingAdmissibleClass

/-!
# Bézout Identity Package
-/

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure BezoutIdentityPackage (A : EuclideanAdmittedObject) where
  linearCombination : ∀ a b : A.carrier, ∃ u v : A.carrier, A.gcdConstruction a b → (A.multiplication u a) + (A.multiplication v b) = A.gcdConstruction a b
  coprimeGeneralization : Prop

structure BezoutEvidence (A : EuclideanAdmittedObject) (B : BezoutIdentityPackage A) where
  linearCombinationClosed : B.linearCombination
  coprimeGeneralizationClosed : B.coprimeGeneralization

def BezoutClosed (A : EuclideanAdmittedObject) (B : BezoutIdentityPackage A) : Prop :=
  B.linearCombination ∧ B.coprimeGeneralization

theorem bezout_closed_from_evidence (A : EuclideanAdmittedObject) (B : BezoutIdentityPackage A) (E : BezoutEvidence A B) : BezoutClosed A B := by
  exact And.intro E.linearCombinationClosed E.coprimeGeneralizationClosed

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse