import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean

structure DesarguesConfiguration (P : ProjectivePlane) where
  triangle : (P.points × P.points × P.points)
  perspectiveCenter : P.points
  perspectiveAxis : P.lines
  desarguesProperty : Prop
  desarguesHolds : desarguesProperty

structure DesarguesEvidence (P : ProjectivePlane) (D : DesarguesConfiguration P) where
  desarguesClosed : D.desarguesProperty

def DesarguesClosed (P : ProjectivePlane) (D : DesarguesConfiguration P) : Prop :=
  D.desarguesProperty

theorem desargues_closed_from_evidence (P : ProjectivePlane) (D : DesarguesConfiguration P)
    (E : DesarguesEvidence P D) : DesarguesClosed P D := by
  exact E.desarguesClosed

end CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean
end HautevilleHouse