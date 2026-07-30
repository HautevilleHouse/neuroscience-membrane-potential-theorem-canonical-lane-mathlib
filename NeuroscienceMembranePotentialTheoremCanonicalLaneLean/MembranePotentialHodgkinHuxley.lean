import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneCapacitance : ℝ
  sodiumConductance : ℝ
  potassiumConductance : ℝ
  leakConductance : ℝ
  sodiumReversalPotential : ℝ
  potassiumReversalPotential : ℝ
  leakReversalPotential : ℝ
  activationVariables : Type u
  inactivationVariables : Type v
  gatingKinetics : Prop
  actionPotentialThreshold : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  gatingKineticsClosed : H.gatingKinetics
  actionPotentialThresholdClosed : H.actionPotentialThreshold

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.gatingKinetics ∧ H.actionPotentialThreshold

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H :=
  And.intro E.gatingKineticsClosed E.actionPotentialThresholdClosed

end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
end HautevilleHouse