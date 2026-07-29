import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean

structure ProjectivePlane where
  pointSet : Type u
  lineSet : Type v
  incidence : pointSet → lineSet → Prop
  anyTwoPointsUniqueLine : ∀ (p q : pointSet), p ≠ q → ∃! (ℓ : lineSet), incidence p ℓ ∧ incidence q ℓ
  anyTwoLinesUniquePoint : ∀ (ℓ m : lineSet), ℓ ≠ m → ∃! (p : pointSet), incidence p ℓ ∧ incidence p m
  containsFourPointsNoThreeCollinear : ∃ (p q r s : pointSet), p ≠ q ∧ p ≠ r ∧ p ≠ s ∧ q ≠ r ∧ q ≠ s ∧ r ≠ s ∧
    ∀ (ℓ : lineSet), ¬ (incidence p ℓ ∧ incidence q ℓ ∧ incidence r ℓ) ∧
    ¬ (incidence p ℓ ∧ incidence q ℓ ∧ incidence s ℓ) ∧
    ¬ (incidence p ℓ ∧ incidence r ℓ ∧ incidence s ℓ) ∧
    ¬ (incidence q ℓ ∧ incidence r ℓ ∧ incidence s ℓ)

structure FiniteProjectivePlane (order : ℕ) extends ProjectivePlane where
  pointCard : Fintype pointSet
  pointCardEq : Fintype.card pointSet = order^2 + order + 1
  lineCard : Fintype lineSet
  lineCardEq : Fintype.card lineSet = order^2 + order + 1
  eachLinePointsCard : ∀ (ℓ : lineSet), Fintype.card {p : pointSet // incidence p ℓ} = order + 1
  eachPointLinesCard : ∀ (p : pointSet), Fintype.card {ℓ : lineSet // incidence p ℓ} = order + 1

end CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean
end HautevilleHouse