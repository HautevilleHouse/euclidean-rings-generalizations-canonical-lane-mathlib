import EuclideanRingsGeneralizationsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EuclideanRingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EuclideanRingAdmittedObject where
  space : EuclideanRingSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

def EuclideanRingWitnessClosed (O : EuclideanRingAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse
