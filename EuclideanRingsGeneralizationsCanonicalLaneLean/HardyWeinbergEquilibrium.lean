import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure HardyWeinbergPackage where
  populationGenotypeFrequencies : Type u
  equilibriumCondition : Prop
  alleleFrequenciesStable : Prop
  expectedGenotypeFrequencies : Prop
  observedVariance : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  equilibriumConditionClosed : H.equilibriumCondition
  alleleFrequenciesStableClosed : H.alleleFrequenciesStable
  expectedGenotypeFrequenciesClosed : H.expectedGenotypeFrequencies
  observedVarianceClosed : H.observedVariance

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.equilibriumCondition ∧ H.alleleFrequenciesStable ∧
  H.expectedGenotypeFrequencies ∧ H.observedVariance

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage)
    (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.equilibriumConditionClosed
    (And.intro E.alleleFrequenciesStableClosed
      (And.intro E.expectedGenotypeFrequenciesClosed E.observedVarianceClosed))

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse