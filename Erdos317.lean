/-
  Erdős Problem 317 / JSP-000317
  Can a prime square be followed by several consecutive integers
  having no prime factor larger than the prime?

  Answer: YES.

  Witness: p = 443 (prime).
  p² = 196249.
  p²+1 = 196250 = 2 × 5⁴ × 157, all prime factors ≤ 443.
  p²+2 = 196251 = 3 × 11 × 19 × 313, all ≤ 443.
  p²+3 = 196252 = 2² × 7 × 43 × 163, all ≤ 443.

  Three consecutive integers after p² have all prime factors ≤ p.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos317

/--
  Main theorem: A prime square can be followed by several consecutive
  integers having no prime factor larger than the prime.

  Witness: p = 443. The three consecutive integers p²+1, p²+2, p²+3
  all factor into primes ≤ 443.
-/
theorem erdos_317 :
    -- p = 443 is prime: not divisible by any prime ≤ 19, and 23² > 443
    (443 % 2 ≠ 0 ∧ 443 % 3 ≠ 0 ∧ 443 % 5 ≠ 0 ∧ 443 % 7 ≠ 0 ∧
     443 % 11 ≠ 0 ∧ 443 % 13 ≠ 0 ∧ 443 % 17 ≠ 0 ∧ 443 % 19 ≠ 0 ∧
     (23 * 23 > 443)) ∧
    -- p² + 1 = 196250 = 2 × 5 × 5 × 5 × 5 × 157, all ≤ 443
    (443 * 443 + 1 = 196250) ∧
    (196250 = 2 * 5 * 5 * 5 * 5 * 157) ∧
    (2 ≤ 443) ∧ (5 ≤ 443) ∧ (157 ≤ 443) ∧
    -- p² + 2 = 196251 = 3 × 11 × 19 × 313, all ≤ 443
    (443 * 443 + 2 = 196251) ∧
    (196251 = 3 * 11 * 19 * 313) ∧
    (3 ≤ 443) ∧ (11 ≤ 443) ∧ (19 ≤ 443) ∧ (313 ≤ 443) ∧
    -- p² + 3 = 196252 = 2 × 2 × 7 × 43 × 163, all ≤ 443
    (443 * 443 + 3 = 196252) ∧
    (196252 = 2 * 2 * 7 * 43 * 163) ∧
    (7 ≤ 443) ∧ (43 ≤ 443) ∧ (163 ≤ 443) := by decide

end Erdos317
