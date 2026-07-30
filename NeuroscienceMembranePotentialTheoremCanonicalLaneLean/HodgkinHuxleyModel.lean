import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneCapacitance : Prop
  ionCurrentEquations : Prop
  gatingVariableDynamics : Prop
  actionPotentialGeneration : Prop
  parameterSet : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  membraneCapacitanceClosed : H.membraneCapacitance
  ionCurrentEquationsClosed : H.ionCurrentEquations
  gatingVariableDynamicsClosed : H.gatingVariableDynamics
  actionPotentialGenerationClosed : H.actionPotentialGeneration
  parameterSetClosed : H.parameterSet

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.membraneCapacitance ∧ H.ionCurrentEquations ∧
  H.gatingVariableDynamics ∧ H.actionPotentialGeneration ∧ H.parameterSet

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.membraneCapacitanceClosed
    (And.intro E.ionCurrentEquationsClosed
      (And.intro E.gatingVariableDynamicsClosed
        (And.intro E.actionPotentialGenerationClosed E.parameterSetClosed)))

end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
end HautevilleHouse
