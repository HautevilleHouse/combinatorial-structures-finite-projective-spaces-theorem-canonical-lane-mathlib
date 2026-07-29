import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean

structure FiniteProjectiveSpace where
  pointSet : Type u
  lineSet : Type v
  incidence : pointSet → lineSet → Prop
  incidenceAxioms : Prop

def incidenceCount (P : FiniteProjectiveSpace) : Nat := 0

structure ProjectiveAdmittedObject where
  space : FiniteProjectiveSpace
  order : Nat
  orderPrimePower : space.order = p ^ k
  desarguesian : Bool
  propertiesHold : Prop
  conclusion : propertiesHold

structure AdmissibleClass where
  object : ProjectiveAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ProjectiveWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean
end HautevilleHouse