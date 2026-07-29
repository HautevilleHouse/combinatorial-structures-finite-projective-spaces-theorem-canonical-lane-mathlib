import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ProjectivePlane where
  points : Type
  lines : Type
  incidence : points → lines → Prop
  finite : Bool
  order : Nat
  orderPositive : order > 0
  distinctPointsUniqueLine : ∀ (p q : points), p ≠ q → ∃! (ℓ : lines), incidence p ℓ ∧ incidence q ℓ
  distinctLinesUniquePoint : ∀ (ℓ m : lines), ℓ ≠ m → ∃! (p : points), incidence p ℓ ∧ incidence p m
  atLeastThreePointsOnLine : ∀ (ℓ : lines), ∃ (p q r : points), p ≠ q ∧ p ≠ r ∧ q ≠ r ∧ incidence p ℓ ∧ incidence q ℓ ∧ incidence r ℓ
  totalPoints : ℕ
  totalLines : ℕ
  orderSquarePoints : totalPoints = order^2 + order + 1
  orderSquareLines : totalLines = order^2 + order + 1

structure ProjectiveAdmittedObject where
  plane : ProjectivePlane
  axiomViolated : ¬(Prop)
  conclusion : plane.order = 1 ∨ plane.order = 2 ∨ plane.order = 4 ∨ plane.order = 8 ∨ plane.order = 16 ∨ plane.order = 32

structure ProjectiveEndgameState where
  object : ProjectiveAdmittedObject

def ProjectiveWitnessClosed (O : ProjectiveAdmittedObject) : Prop :=
  O.conclusion

end CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean
end HautevilleHouse