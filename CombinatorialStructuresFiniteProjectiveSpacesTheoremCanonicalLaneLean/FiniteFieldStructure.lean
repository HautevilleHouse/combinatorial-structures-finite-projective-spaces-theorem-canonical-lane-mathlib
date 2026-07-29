import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean

structure FiniteField where
  order : ℕ
  primePower : Fact (Nat.Prime (order.factors.flat?)) 
  characteristic : ℕ
  elements : Type u

structure FiniteFieldStructurePackage (F : FiniteField) where
  additiveGroupAbelian : Prop
  multiplicativeGroupCyclic : Prop
  fieldAxiomsHeld : Prop
  tracesAndNorms : Prop

structure FiniteFieldStructureEvidence {F : FiniteField} (Pkg : FiniteFieldStructurePackage F) where
  additiveGroupAbelianClosed : Pkg.additiveGroupAbelian
  multiplicativeGroupCyclicClosed : Pkg.multiplicativeGroupCyclic
  fieldAxiomsHeldClosed : Pkg.fieldAxiomsHeld
  tracesAndNormsClosed : Pkg.tracesAndNorms

def FiniteFieldStructureClosed {F : FiniteField} (Pkg : FiniteFieldStructurePackage F) : Prop :=
  Pkg.additiveGroupAbelian ∧ Pkg.multiplicativeGroupCyclic ∧
  Pkg.fieldAxiomsHeld ∧ Pkg.tracesAndNorms

theorem finite_field_structure_closed_from_evidence
    {F : FiniteField} (Pkg : FiniteFieldStructurePackage F)
    (E : FiniteFieldStructureEvidence Pkg) : FiniteFieldStructureClosed Pkg := by
  exact And.intro E.additiveGroupAbelianClosed
    (And.intro E.multiplicativeGroupCyclicClosed
      (And.intro E.fieldAxiomsHeldClosed E.tracesAndNormsClosed))

end CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean
end HautevilleHouse