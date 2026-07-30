import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

structure HebbianLearningPackage where
  presynaptic : ℝ → ℝ  -- activity pre
  postsynaptic : ℝ → ℝ  -- activity post
  synapseWeight : ℝ → ℝ  -- weight over time
  learningRate : ℝ
  timeConstant : ℝ

structure HebbianLearningEvidence (H : HebbianLearningPackage) where
  hebbRuleClosed : ∀ t, HasDerivAt H.synapseWeight t (H.learningRate * H.presynaptic t * H.postsynaptic t)
  learningRatePositive : H.learningRate > 0
  timeConstantPositive : H.timeConstant > 0

def HebbianLearningClosed (H : HebbianLearningPackage) : Prop :=
  (∀ t, HasDerivAt H.synapseWeight t (H.learningRate * H.presynaptic t * H.postsynaptic t)) ∧
  H.learningRate > 0 ∧ H.timeConstant > 0

theorem hebbian_learning_closed_from_evidence (H : HebbianLearningPackage) (E : HebbianLearningEvidence H) :
    HebbianLearningClosed H := by
  exact And.intro E.hebbRuleClosed (And.intro E.learningRatePositive E.timeConstantPositive)

end HautevilleHouse
end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
