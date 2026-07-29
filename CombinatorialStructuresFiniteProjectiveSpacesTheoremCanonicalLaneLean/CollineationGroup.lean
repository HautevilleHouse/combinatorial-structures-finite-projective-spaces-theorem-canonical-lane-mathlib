import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean

structure CollineationGroup (F : FiniteField) (P : ProjectiveSpaceAxioms F) where
  automorphism : Type u
  composition : automorphism → automorphism → automorphism
  identity : automorphism
  inverse : automorphism → automorphism
  groupAxioms : Prop
  preservesIncidence : ∀ (f : automorphism) (p : P.pointSet) (l : P.lineSet),
    P.incidence p l → P.incidence (f p) (f l)
  faithfulAction : Prop

structure CollineationGroupEvidence {F : FiniteField} {P : ProjectiveSpaceAxioms F}
    (G : CollineationGroup F P) where
  groupAxiomsClosed : G.groupAxioms
  preservesIncidenceClosed : G.preservesIncidence
  faithfulActionClosed : G.faithfulAction

def CollineationGroupClosed {F : FiniteField} {P : ProjectiveSpaceAxioms F}
    (G : CollineationGroup F P) : Prop :=
  G.groupAxioms ∧ G.preservesIncidence ∧ G.faithfulAction

theorem collineation_group_closed_from_evidence
    {F : FiniteField} {P : ProjectiveSpaceAxioms F}
    (G : CollineationGroup F P) (E : CollineationGroupEvidence G) :
    CollineationGroupClosed G := by
  exact And.intro E.groupAxiomsClosed
    (And.intro E.preservesIncidenceClosed E.faithfulActionClosed)

end CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean
end HautevilleHouse