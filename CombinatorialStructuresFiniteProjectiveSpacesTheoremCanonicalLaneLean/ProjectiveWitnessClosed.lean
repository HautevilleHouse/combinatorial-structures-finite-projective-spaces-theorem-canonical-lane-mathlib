import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def ProjectiveWitnessClosed (O : ProjectiveAdmittedObject) : Prop :=
  O.propertiesHold

structure ProjectiveEndgameState where
  object : ProjectiveAdmittedObject

theorem projective_witness_closed_from_object (O : ProjectiveAdmittedObject) :
    ProjectiveWitnessClosed O := O.propertiesHold

end CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean
end HautevilleHouse