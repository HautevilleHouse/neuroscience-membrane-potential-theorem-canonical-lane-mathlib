import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

structure SynapticIntegrationPackage where
  synapticInputs : List (ℝ × ℝ)  -- list of (time, amplitude)
  postsynapticPotential : ℝ → ℝ
  integrationRule : Prop

def SynapticIntegrationClosed (P : SynapticIntegrationPackage) : Prop :=
  (∀ (t, a) ∈ P.synapticInputs, a ≠ 0) ∧ P.integrationRule

theorem synaptic_integration_bridge (P : SynapticIntegrationPackage) (h₁ : ∀ (t, a) ∈ P.synapticInputs, a ≠ 0) (h₂ : P.integrationRule) :
    SynapticIntegrationClosed P := by
  exact And.intro h₁ h₂

end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
end HautevilleHouse