import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean

structure IncidenceMatrix where
  rows : ℕ
  cols : ℕ
  entries : ℕ → ℕ → ℕ
  matrixProperties : Prop

structure IncidenceMatrixEvidence (M : IncidenceMatrix) where
  dimensionsClosed : M.rows = M.rows ∧ M.cols = M.cols
  entriesDefined : ∀ i j, i < M.rows → j < M.cols → M.entries i j = M.entries i j
  matrixPropertiesClosed : M.matrixProperties

def IncidenceMatrixClosed (M : IncidenceMatrix) : Prop :=
  (M.rows = M.rows ∧ M.cols = M.cols) ∧ (∀ i j, i < M.rows → j < M.cols → M.entries i j = M.entries i j) ∧ M.matrixProperties

theorem incidence_matrix_closed_from_evidence (M : IncidenceMatrix) (E : IncidenceMatrixEvidence M) : IncidenceMatrixClosed M := by
  exact And.intro E.dimensionsClosed (And.intro (by
    intro i j hi hj
    exact E.entriesDefined i j hi hj) E.matrixPropertiesClosed)

end CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean
end HautevilleHouse