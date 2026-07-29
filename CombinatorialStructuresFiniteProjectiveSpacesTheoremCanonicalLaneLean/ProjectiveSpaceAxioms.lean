import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean

structure ProjectiveSpaceAxioms (F : FiniteField) where
  pointSet : Type u
  lineSet : Type v
  incidence : pointSet → lineSet → Prop
  incidenceAxiom1 : ∀ (p q : pointSet), p ≠ q → ∃! l : lineSet, incidence p l ∧ incidence q l
  incidenceAxiom2 : ∀ (l : lineSet), ∃ (p q : pointSet), p ≠ q ∧ incidence p l ∧ incidence q l
  incidenceAxiom3 : ∃ (p₁ p₂ p₃ p₄ : pointSet), ∀ (l : lineSet), 
    ¬ (incidence p₁ l ∧ incidence p₂ l ∧ incidence p₃ l ∧ incidence p₄ l)
  finiteFieldAxiom : F.order = 2 → ∃ (l : lineSet), ∀ (p : pointSet), incidence p l

end CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean
end HautevilleHouse