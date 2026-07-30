import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

structure NernstEquilibriumPackage where
  ionConcentrations : ℝ × ℝ
  valence : ℤ
  temperature : ℝ
  faradayConstant : ℝ
  nernstPotential : ℝ
  nernstEquation : Prop

structure NernstEquilibriumEvidence (P : NernstEquilibriumPackage) where
  concentrationsClosed : P.ionConcentrations.1 > 0 ∧ P.ionConcentrations.2 > 0
  temperatureClosed : P.temperature > 0
  nernstEquationClosed : P.nernstEquation

def NernstEquilibriumClosed (P : NernstEquilibriumPackage) : Prop :=
  P.ionConcentrations.1 > 0 ∧ P.ionConcentrations.2 > 0 ∧ P.temperature > 0 ∧ P.nernstEquation

theorem nernst_equilibrium_closed_from_evidence (P : NernstEquilibriumPackage) (E : NernstEquilibriumEvidence P) :
    NernstEquilibriumClosed P := by
  exact And.intro E.concentrationsClosed.1 (And.intro E.concentrationsClosed.2 (And.intro E.temperatureClosed E.nernstEquationClosed))

end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
end HautevilleHouse