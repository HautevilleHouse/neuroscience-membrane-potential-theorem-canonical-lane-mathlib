import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  preSynapticActivity : ℝ
  postSynapticActivity : ℝ
  learningRate : ℝ
  synapticWeight : ℝ
  weightDynamics : Prop
  weightBounds : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  weightDynamicsClosed : H.weightDynamics
  weightBoundsClosed : H.weightBounds
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.weightDynamics ∧ H.weightBounds ∧ H.longTermPotentiation ∧ H.longTermDepression

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H :=
  And.intro E.weightDynamicsClosed
    (And.intro E.weightBoundsClosed
      (And.intro E.longTermPotentiationClosed E.longTermDepressionClosed))

end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
end HautevilleHouse