import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean

structure DesignTheoryPackage where
  incidenceStructure : Type u
  pointSet : Type v
  blockSet : Type w
  incidenceRelation : pointSet → blockSet → Prop
  parameters : DesignParameters
  blockDesignAxiom : Prop

structure DesignParameters where
  v : ℕ
  k : ℕ
  λ : ℕ

structure DesignTheoryEvidence (D : DesignTheoryPackage) where
  incidenceStructureClosed : D.incidenceStructure
  parametersClosed : D.parameters = D.parameters
  blockDesignAxiomClosed : D.blockDesignAxiom

def DesignTheoryClosed (D : DesignTheoryPackage) : Prop :=
  D.incidenceStructure ∧ D.parameters = D.parameters ∧ D.blockDesignAxiom

theorem design_theory_closed_from_evidence (D : DesignTheoryPackage) (E : DesignTheoryEvidence D) : DesignTheoryClosed D := by
  exact And.intro E.incidenceStructureClosed (And.intro E.parametersClosed E.blockDesignAxiomClosed)

end CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean
end HautevilleHouse