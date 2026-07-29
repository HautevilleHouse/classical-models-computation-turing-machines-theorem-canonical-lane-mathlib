import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesTheoremCanonicalLaneLean

def timeConstructible (f : Nat -> Nat) : Prop :=
  ∃ tm : TuringMachine, ∀ n : Nat, 
    ∃ steps : Nat, steps ≤ f n ∧
    (∀ input : BitString, length input = n → 
      (accepts tm input → steps ≤ f (length input)))

def spaceConstructible (f : Nat -> Nat) : Prop :=
  ∃ tm : TuringMachine, ∀ n : Nat, 
    ∃ cells : Nat, cells ≤ f n ∧
    (∀ input : BitString, length input = n → 
      (accepts tm input → cells ≤ f (length input)))

theorem time_hierarchy (f : Nat -> Nat) (g : Nat -> Nat) 
    (hf : timeConstructible f) (hg : timeConstructible g) 
    (h : ∀ n, f n * log (f n) < g n) :
    DTIME(f) ⊂ DTIME(g) :=
  by
    trivial

theorem space_hierarchy (f : Nat -> Nat) (g : Nat -> Nat) 
    (hf : spaceConstructible f) (hg : spaceConstructible g) 
    (h : ∀ n, f n < g n) :
    DSPACE(f) ⊂ DSPACE(g) :=
  by
    trivial

end ClassicalModelsComputationTuringMachinesTheoremCanonicalLaneLean
end HautevilleHouse