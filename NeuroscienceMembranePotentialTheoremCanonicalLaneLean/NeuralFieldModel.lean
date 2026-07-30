import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

structure NeuralFieldModelPackage where
  populationFiringRate : Prop
  synapticKernel : Prop
  spatialCoupling : Prop
  temporalDynamics : Prop
  patternFormation : Prop

structure NeuralFieldModelEvidence (N : NeuralFieldModelPackage) where
  populationFiringRateClosed : N.populationFiringRate
  synapticKernelClosed : N.synapticKernel
  spatialCouplingClosed : N.spatialCoupling
  temporalDynamicsClosed : N.temporalDynamics
  patternFormationClosed : N.patternFormation

def NeuralFieldModelClosed (N : NeuralFieldModelPackage) : Prop :=
  N.populationFiringRate ∧ N.synapticKernel ∧ N.spatialCoupling ∧
  N.temporalDynamics ∧ N.patternFormation

theorem neural_field_model_closed_from_evidence (N : NeuralFieldModelPackage) (E : NeuralFieldModelEvidence N) :
    NeuralFieldModelClosed N := by
  exact And.intro E.populationFiringRateClosed
    (And.intro E.synapticKernelClosed
      (And.intro E.spatialCouplingClosed
        (And.intro E.temporalDynamicsClosed E.patternFormationClosed)))

end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
end HautevilleHouse
