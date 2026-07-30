import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

structure IonChannelPackage where
  sodiumChannelGating : Prop
  potassiumChannelGating : Prop
  leakChannelGating : Prop
  voltageDependence : Prop
  activationInactivation : Prop

structure IonChannelEvidence (I : IonChannelPackage) where
  sodiumChannelGatingClosed : I.sodiumChannelGating
  potassiumChannelGatingClosed : I.potassiumChannelGating
  leakChannelGatingClosed : I.leakChannelGating
  voltageDependenceClosed : I.voltageDependence
  activationInactivationClosed : I.activationInactivation

def IonChannelClosed (I : IonChannelPackage) : Prop :=
  I.sodiumChannelGating ∧ I.potassiumChannelGating ∧ I.leakChannelGating ∧
  I.voltageDependence ∧ I.activationInactivation

theorem ion_channel_closed_from_evidence (I : IonChannelPackage) (E : IonChannelEvidence I) :
    IonChannelClosed I := by
  exact And.intro E.sodiumChannelGatingClosed
    (And.intro E.potassiumChannelGatingClosed
      (And.intro E.leakChannelGatingClosed
        (And.intro E.voltageDependenceClosed E.activationInactivationClosed)))

end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
end HautevilleHouse
