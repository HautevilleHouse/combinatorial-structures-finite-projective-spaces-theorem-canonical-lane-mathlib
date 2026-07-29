import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialStructuresFiniteProjectiveSpacesTheorem

structure FiniteProjectiveSpace (q : Nat) where
  points : Type
  lines : Type
  incidence : points → lines → Prop
  finiteField : q > 0
  incidenceAxioms : Prop

structure ProjectiveSpaceAdmittedObject where
  space : FiniteProjectiveSpace 2
  orderTwo : space.finiteField = by decide
  desarguesian : Prop
  conclusion : desarguesian

end CombinatorialStructuresFiniteProjectiveSpacesTheorem
end HautevilleHouse