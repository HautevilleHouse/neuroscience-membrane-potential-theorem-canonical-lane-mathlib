import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

structure CableTheoryPackage where
  axialResistance : ℝ
  membraneResistance : ℝ
  membraneCapacitance : ℝ
  spaceConstant : ℝ
  timeConstant : ℝ

structure CableTheoryEvidence (C : CableTheoryPackage) where
  spaceConstantDefined : C.spaceConstant = Real.sqrt (C.membraneResistance / C.axialResistance)
  timeConstantDefined : C.timeConstant = C.membraneResistance * C.membraneCapacitance
  axialResistancePositive : C.axialResistance > 0
  membraneResistancePositive : C.membraneResistance > 0
  membraneCapacitancePositive : C.membraneCapacitance > 0

def CableTheoryClosed (C : CableTheoryPackage) : Prop :=
  C.spaceConstant = Real.sqrt (C.membraneResistance / C.axialResistance) ∧
  C.timeConstant = C.membraneResistance * C.membraneCapacitance ∧
  C.axialResistance > 0 ∧ C.membraneResistance > 0 ∧ C.membraneCapacitance > 0

theorem cable_theory_closed_from_evidence (C : CableTheoryPackage) (E : CableTheoryEvidence C) :
    CableTheoryClosed C := by
  exact And.intro E.spaceConstantDefined (And.intro E.timeConstantDefined
    (And.intro E.axialResistancePositive (And.intro E.membraneResistancePositive E.membraneCapacitancePositive)))

end HautevilleHouse
end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
