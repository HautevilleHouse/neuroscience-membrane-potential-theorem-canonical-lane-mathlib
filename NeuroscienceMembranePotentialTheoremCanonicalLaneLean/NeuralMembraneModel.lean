import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

structure NeuralMembraneModel where
  membraneVoltage : ℝ → ℝ  -- time to voltage
  ionChannels : List String
  conductance : ℝ
  capacitance : ℝ
  leakModel : ℝ
  restingPotential : ℝ

structure NeuralMembraneEvidence (M : NeuralMembraneModel) where
  membraneVoltageSmooth : M.membraneVoltage ∈ C^∞(ℝ, ℝ)
  conductancePositive : M.conductance > 0
  capacitancePositive : M.capacitance > 0
  leakModelClosed : M.leakModel = M.conductance * M.restingPotential

def NeuralMembraneClosed (M : NeuralMembraneModel) : Prop :=
  (∃ f : ℝ → ℝ, f = M.membraneVoltage ∧ f ∈ C^∞(ℝ, ℝ)) ∧
  M.conductance > 0 ∧ M.capacitance > 0 ∧ M.leakModel = M.conductance * M.restingPotential

theorem neural_membrane_closed_from_evidence (M : NeuralMembraneModel) (E : NeuralMembraneEvidence M) :
    NeuralMembraneClosed M := by
  refine ⟨?_, E.conductancePositive, E.capacitancePositive, E.leakModelClosed⟩
  exact ⟨M.membraneVoltage, rfl, E.membraneVoltageSmooth⟩

end HautevilleHouse
end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
