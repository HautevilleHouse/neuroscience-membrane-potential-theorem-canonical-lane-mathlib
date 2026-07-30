import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

structure NeuralFieldTheoryPackage where
  axonalPropagation : Prop
  synapticIntegration : Prop
  populationDensityModel : Prop
  spatiotemporalPatterns : Prop
  travelingWaveSolutions : Prop
  bistabilityDynamics : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheoryPackage) where
  axonalPropagationClosed : N.axonalPropagation
  synapticIntegrationClosed : N.synapticIntegration
  populationDensityModelClosed : N.populationDensityModel
  spatiotemporalPatternsClosed : N.spatiotemporalPatterns
  travelingWaveSolutionsClosed : N.travelingWaveSolutions
  bistabilityDynamicsClosed : N.bistabilityDynamics

def NeuralFieldTheoryClosed (N : NeuralFieldTheoryPackage) : Prop :=
  N.axonalPropagation ∧ N.synapticIntegration ∧ N.populationDensityModel ∧
  N.spatiotemporalPatterns ∧ N.travelingWaveSolutions ∧ N.bistabilityDynamics

theorem neural_field_theory_closed_from_evidence (N : NeuralFieldTheoryPackage)
    (E : NeuralFieldTheoryEvidence N) : NeuralFieldTheoryClosed N := by
  exact And.intro E.axonalPropagationClosed
    (And.intro E.synapticIntegrationClosed
      (And.intro E.populationDensityModelClosed
        (And.intro E.spatiotemporalPatternsClosed
          (And.intro E.travelingWaveSolutionsClosed
            E.bistabilityDynamicsClosed))))

end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
end HautevilleHouse