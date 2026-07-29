import canonicalLaneMathlib.AdmissibleClass
import CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean.ProjectivePlane

namespace HautevilleHouse
namespace CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean

structure FiniteFieldPlane (F : Type u) [Field F] [Fintype F] where
  plane : FiniteProjectivePlane 1
  coordProjectivization : (F × F × F) → Prop
  incidenceCondition : ∀ (p : (F × F × F)) (ℓ : (F × F × F)), incidenceCondition p ℓ ↔ ...

-- The theorem: Every finite field gives a projective plane of order q = card(F) - 1
theorem finite_field_plane_is_projective_plane (F : Type u) [Field F] [Fintype F] : FiniteProjectivePlane (Fintype.card F - 1) := by
  sorry

end CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean
end HautevilleHouse