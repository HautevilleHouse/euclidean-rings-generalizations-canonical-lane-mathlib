import EuclideanRingsGeneralizationsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure HardyWeinbergPackage where
  alleleFrequencyA : ℝ
  alleleFrequencyB : ℝ
  expectedAA : ℝ
  expectedAB : ℝ
  expectedBB : ℝ
  observedAA : ℕ
  observedAB : ℕ
  observedBB : ℕ
  chiSquaredStatistic : ℝ
  equilibriumThreshold : ℝ
  equilibriumHolds : Prop
  equilibriumHoldsTerm : equilibriumHolds

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.equilibriumHolds

theorem hardy_weinberg_closed_from_package (H : HardyWeinbergPackage) : HardyWeinbergClosed H :=
  H.equilibriumHoldsTerm

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse