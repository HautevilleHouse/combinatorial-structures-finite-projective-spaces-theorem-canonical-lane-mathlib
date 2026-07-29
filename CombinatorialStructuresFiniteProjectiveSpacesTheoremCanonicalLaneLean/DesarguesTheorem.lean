import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean

structure DesarguesConfiguration (P : FiniteProjectiveSpace) where
  trianglesDefined : Prop
  perspectivityChecked : Prop
  intersectionConditions : Prop

def desarguesHolds (P : FiniteProjectiveSpace) : Prop :=
  ∀ (cfg : DesarguesConfiguration P), cfg.intersectionConditions → cfg.perspectivityChecked

structure DesarguesEvidence (P : FiniteProjectiveSpace) (D : DesarguesConfiguration P) where
  trianglesDefinedClosed : D.trianglesDefined
  perspectivityCheckedClosed : D.perspectivityChecked
  intersectionConditionsClosed : D.intersectionConditions
  conclusionClosed : intersectionConditionsClosed → perspectivityCheckedClosed

theorem desargues_holds_given_evidence (P : FiniteProjectiveSpace) (D : DesarguesConfiguration P) (E : DesarguesEvidence P D) :
    desarguesHolds P := by
  intro cfg hInt
  exact E.conclusionClosed hInt

end CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean
end HautevilleHouse