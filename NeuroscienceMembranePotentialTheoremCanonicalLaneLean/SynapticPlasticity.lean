import HautevilleHouse.NeuroscienceMembranePotentialTheoremCanonicalLaneLean.HodgkinHuxleyEquations

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

structure SynapticPlasticityPackage {G : IonChannelPackage} (H : HodgkinHuxleyPackage G) where
  hebbianRule : Prop
  spikeTimingDependence : Prop
  ltpThreshold : ℝ
  ltdThreshold : ℝ
  weightDynamics : Prop

structure SynapticPlasticityEvidence {G : IonChannelPackage} {H : HodgkinHuxleyPackage G} (S : SynapticPlasticityPackage H) where
  hebbianRuleClosed : S.hebbianRule
  spikeTimingDependenceClosed : S.spikeTimingDependence
  ltpThresholdClosed : S.ltpThreshold = 0.0
  ltdThresholdClosed : S.ltdThreshold = 0.0
  weightDynamicsClosed : S.weightDynamics

def SynapticPlasticityClosed {G : IonChannelPackage} {H : HodgkinHuxleyPackage G} (S : SynapticPlasticityPackage H) : Prop :=
  S.hebbianRule ∧ S.spikeTimingDependence ∧ S.weightDynamics

theorem synaptic_plasticity_closed_from_evidence
    {G : IonChannelPackage} {H : HodgkinHuxleyPackage G} (S : SynapticPlasticityPackage H) (E : SynapticPlasticityEvidence S) :
    SynapticPlasticityClosed S := by
  exact And.intro E.hebbianRuleClosed (And.intro E.spikeTimingDependenceClosed E.weightDynamicsClosed)

end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
end HautevilleHouse