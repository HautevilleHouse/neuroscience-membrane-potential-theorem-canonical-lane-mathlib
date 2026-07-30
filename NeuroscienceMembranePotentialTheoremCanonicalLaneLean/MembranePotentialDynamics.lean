import canonicalLaneMathlib.AdmissibleClass
import NeuroscienceMembranePotentialTheoremCanonicalLaneLean.HodgkinHuxleyEquations
import NeuroscienceMembranePotentialTheoremCanonicalLaneLean.NernstEquilibrium

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

structure MembranePotentialDynamicsPackage (H : HodgkinHuxleyPackage) (N : NernstEquilibriumPackage) where
  membranePotential : ℝ → ℝ
  thresholdPotential : ℝ
  spikingCondition : Prop
  refractoryPeriod : ℝ
  dynamicsEquation : Prop

def MembranePotentialDynamicsClosed {H : HodgkinHuxleyPackage} {N : NernstEquilibriumPackage} (P : MembranePotentialDynamicsPackage H N) : Prop :=
  P.spikingCondition ∧ P.dynamicsEquation

theorem membrane_potential_dynamics_bridge {H : HodgkinHuxleyPackage} {N : NernstEquilibriumPackage} (P : MembranePotentialDynamicsPackage H N) (h₁ : P.spikingCondition) (h₂ : P.dynamicsEquation) :
    MembranePotentialDynamicsClosed P := by
  exact And.intro h₁ h₂

end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
end HautevilleHouse