import canonicalLaneMathlib.AdmissibleClass
import CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean.ProjectivePlane

namespace HautevilleHouse
namespace CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean

structure OrderExistence where
  order : ℕ
  plane : FiniteProjectivePlane order

-- Conjecture: orders are prime powers
theorem order_is_prime_power (oe : OrderExistence) : ∃ (p : ℕ) (k : ℕ), Nat.Prime p ∧ oe.order = p ^ k := by
  sorry

end CombinatorialStructuresFiniteProjectiveSpacesTheoremCanonicalLaneLean
end HautevilleHouse