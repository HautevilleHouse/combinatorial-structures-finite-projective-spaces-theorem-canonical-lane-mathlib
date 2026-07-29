import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean

structure OvalConfiguration where
  projectivePlane : ProjectivePlaneAxioms
  ovalSet : Set (pointType projectivePlane)
  noThreeCollinear : Prop
  tangentLines : Prop

where
  pointType (P : ProjectivePlaneAxioms) := P.pointSet

structure OvalConfigurationEvidence (O : OvalConfiguration) where
  noThreeCollinearClosed : O.noThreeCollinear
  tangentLinesClosed : O.tangentLines

def OvalConfigurationClosed (O : OvalConfiguration) : Prop :=
  O.noThreeCollinear ∧ O.tangentLines

theorem oval_configuration_closed_from_evidence (O : OvalConfiguration) (E : OvalConfigurationEvidence O) : OvalConfigurationClosed O := by
  exact And.intro E.noThreeCollinearClosed E.tangentLinesClosed

end CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean
end HautevilleHouse