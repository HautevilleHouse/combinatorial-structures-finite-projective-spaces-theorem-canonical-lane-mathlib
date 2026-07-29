import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean

structure AutomorphismGroup where
  groupType : Type u
  groupOperation : groupType → groupType → groupType
  groupAxioms : Prop
  actionOnStructure : Prop

structure AutomorphismGroupEvidence (G : AutomorphismGroup) where
  groupAxiomsClosed : G.groupAxioms
  actionOnStructureClosed : G.actionOnStructure

def AutomorphismGroupClosed (G : AutomorphismGroup) : Prop :=
  G.groupAxioms ∧ G.actionOnStructure

theorem automorphism_group_closed_from_evidence (G : AutomorphismGroup) (E : AutomorphismGroupEvidence G) : AutomorphismGroupClosed G := by
  exact And.intro E.groupAxiomsClosed E.actionOnStructureClosed

end CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean
end HautevilleHouse