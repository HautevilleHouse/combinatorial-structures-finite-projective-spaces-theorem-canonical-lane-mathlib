import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean

structure ProjectiveSpaceDimension where
  dimension : ℕ
  vectorSpaceDimension : ℕ
  rankRelation : Prop
  latticeOfSubspaces : Prop

structure ProjectiveSpaceDimensionEvidence (D : ProjectiveSpaceDimension) where
  dimensionClosed : D.dimension = D.dimension
  rankRelationClosed : D.rankRelation
  latticeOfSubspacesClosed : D.latticeOfSubspaces

def ProjectiveSpaceDimensionClosed (D : ProjectiveSpaceDimension) : Prop :=
  D.dimension = D.dimension ∧ D.rankRelation ∧ D.latticeOfSubspaces

theorem projective_space_dimension_closed_from_evidence (D : ProjectiveSpaceDimension) (E : ProjectiveSpaceDimensionEvidence D) : ProjectiveSpaceDimensionClosed D := by
  exact And.intro E.dimensionClosed (And.intro E.rankRelationClosed E.latticeOfSubspacesClosed)

end CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean
end HautevilleHouse