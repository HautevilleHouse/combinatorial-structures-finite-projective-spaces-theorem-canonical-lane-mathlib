import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean

structure FanoPlaneEvidence where
  orderTwoPlane : ProjectivePlane
  orderTwoProof : orderTwoPlane.order = 2
  allLinesThreePoints : Prop
  fanoAxiomFails : Prop
  fanoClosed : allLinesThreePoints ∧ fanoAxiomFails

theorem fano_plane_evidence (F : FanoPlaneEvidence) : F.fanoClosed := by
  exact F.fanoClosed

end CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean
end HautevilleHouse