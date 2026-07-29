import EuclideanRingsGeneralizationsCanonicalLaneLean.AdmissibleClass

/-!
# Hardy-Weinberg Equilibrium Package
-/

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure HardyWeinbergPackage where
  alleleFrequencies : Type u
  genotypeFrequencies : Type v
  equilibriumCondition : Prop
  randomMatingAssumption : Prop

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.equilibriumCondition ∧ H.randomMatingAssumption

theorem hardy_weinberg_closed (H : HardyWeinbergPackage) (h_eq : H.equilibriumCondition) (h_rm : H.randomMatingAssumption) :
    HardyWeinbergClosed H := by
  exact And.intro h_eq h_rm

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse
