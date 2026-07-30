import NeuroscienceMembranePotentialTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

def ConstrainedMembranePotentialClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_membrane_potential_endgame (A : AdmissibleClass) :
    ConstrainedMembranePotentialClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
end HautevilleHouse