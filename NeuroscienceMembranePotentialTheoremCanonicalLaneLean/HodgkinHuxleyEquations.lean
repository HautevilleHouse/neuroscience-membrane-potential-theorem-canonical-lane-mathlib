import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneCapacitance : Prop
  sodiumChannelActivation : Prop
  potassiumChannelActivation : Prop
  leakageConductance : Prop
  nernstPotentialsDefined : Prop
  differentialEquationsSystem : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  membraneCapacitanceClosed : H.membraneCapacitance
  sodiumChannelActivationClosed : H.sodiumChannelActivation
  potassiumChannelActivationClosed : H.kaliumChannelActivation
  leakageConductanceClosed : H.leakageConductance
  nernstPotentialsDefinedClosed : H.nernstPotentialsDefined
  differentialEquationsSystemClosed : H.differentialEquationsSystem
  actionPotentialGenerationClosed : H.actionPotentialGeneration

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.membraneCapacitance ∧ H.sodiumChannelActivation ∧ H.kaliumChannelActivation ∧
  H.leakageConductance ∧ H.nernstPotentialsDefined ∧ H.differentialEquationsSystem ∧
  H.actionPotentialGeneration

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.membraneCapacitanceClosed
    (And.intro E.sodiumChannelActivationClosed
      (And.intro E.kaliumChannelActivationClosed
        (And.intro E.leakageConductanceClosed
          (And.intro E.nernstPotentialsDefinedClosed
            (And.intro E.differentialEquationsSystemClosed
              E.actionPotentialGenerationClosed)))))

end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
end HautevilleHouse