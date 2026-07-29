import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EuclideanRingsGeneralizationsCanonicalLaneLean

structure PopulationGeneticsObject where
  species : Type
  gene : Type
  alleleFrequencies : Type
  genotypeFrequencies : Type
  equilibriumStatus : Prop
  linkageMap : Prop
  alignment : Prop
  phylogeny : Prop
  conclusion : equilibriumStatus ∧ linkageMap ∧ alignment ∧ phylogeny

structure PopulationGeneticsAdmittedObject where
  object : PopulationGeneticsObject
  equilibriumClosed : Prop
  linkageClosed : Prop
  alignmentClosed : Prop
  phylogenyClosed : Prop
  gateWitness : equilibriumClosed ∨ linkageClosed ∨ alignmentClosed ∨ phylogenyClosed

def populationGeneticsAdmittedClass (A : PopulationGeneticsAdmittedObject) : AdmissibleClass := {
  object := A
  endpointSatisfied := A.equilibriumClosed
  remainderRecorded := A.linkageClosed
  gateWitness := by
    left
    exact A.equilibriumClosed
}

end EuclideanRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse