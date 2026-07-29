import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialStructuresFiniteProjectiveSpacesTheorem

structure ProjectivePlaneAxioms (q : Nat) where
  pointLineIncidence : Type
  anyTwoPointsOnUniqueLine : Prop
  anyTwoLinesIntersectInUniquePoint : Prop
  atLeastFourPoints : q ≥ 2

theorem projective_plane_axioms_imply_desarguesian (q : Nat) (P : ProjectivePlaneAxioms q) :
    (∀ (A : AdmissibleClass), A.object.space = P ∧ A.object.desarguesian) := by
  intro A
  exact And.intro (by
    apply A.object.space = P
    exact A.object.space = P
  ) (by
    exact A.object.desarguesian
  )

end CombinatorialStructuresFiniteProjectiveSpacesTheorem
end HautevilleHouse