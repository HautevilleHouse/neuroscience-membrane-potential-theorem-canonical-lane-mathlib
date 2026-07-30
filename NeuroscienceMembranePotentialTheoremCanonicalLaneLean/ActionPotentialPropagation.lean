import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

structure ActionPotentialPropagationPackage where
  saltatoryConduction : Prop
  continuousConduction : Prop
  myelinSheathEffect : Prop
  velocityEquation : Prop
  nodeOfRanvierDynamics : Prop

structure ActionPotentialPropagationEvidence (A : ActionPotentialPropagationPackage) where
  saltatoryConductionClosed : A.saltatoryConduction
  continuousConductionClosed : A.continuousConduction
  myelinSheathEffectClosed : A.myelinSheathEffect
  velocityEquationClosed : A.velocityEquation
  nodeOfRanvierDynamicsClosed : A.nodeOfRanvierDynamics

def ActionPotentialPropagationClosed (A : ActionPotentialPropagationPackage) : Prop :=
  A.saltatoryConduction ∧ A.continuousConduction ∧ A.myelinSheathEffect ∧
  A.velocityEquation ∧ A.nodeOfRanvierDynamics

theorem action_potential_propagation_closed_from_evidence (A : ActionPotentialPropagationPackage) (E : ActionPotentialPropagationEvidence A) :
    ActionPotentialPropagationClosed A := by
  exact And.intro E.saltatoryConductionClosed
    (And.intro E.continuousConductionClosed
      (And.intro E.myelinSheathEffectClosed
        (And.intro E.velocityEquationClosed E.nodeOfRanvierDynamicsClosed)))

end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
end HautevilleHouse
