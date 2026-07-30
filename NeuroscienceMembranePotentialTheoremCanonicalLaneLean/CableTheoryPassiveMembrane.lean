import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

structure CablePackage where
  axialResistance : ℝ
  membraneResistance : ℝ
  membraneCapacitance : ℝ
  lengthConstant : ℝ
  timeConstant : ℝ
  cableEquation : Prop
  steadyStateSolution : Prop
  transientSolution : Prop

structure CableEvidence (C : CablePackage) where
  cableEquationClosed : C.cableEquation
  steadyStateSolutionClosed : C.steadyStateSolution
  transientSolutionClosed : C.transientSolution

def CableClosed (C : CablePackage) : Prop :=
  C.cableEquation ∧ C.steadyStateSolution ∧ C.transientSolution

theorem cable_closed_from_evidence (C : CablePackage)
    (E : CableEvidence C) : CableClosed C :=
  And.intro E.cableEquationClosed
    (And.intro E.steadyStateSolutionClosed E.transientSolutionClosed)

end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
end HautevilleHouse