import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean

structure IonChannelDynamics where
  channelTypes : Type u
  gatingMechanism : Type v
  currentFlow : Type w
  voltageDependence : Prop
  ionSelectivity : Prop
  kinetics : Prop

structure IonChannelEvidence (I : IonChannelDynamics) where
  voltageDependenceClosed : I.voltageDependence
  ionSelectivityClosed : I.ionSelectivity
  kineticsClosed : I.kinetics

def IonChannelClosed (I : IonChannelDynamics) : Prop :=
  I.voltageDependence ∧ I.ionSelectivity ∧ I.kinetics

theorem ion_channel_closed_from_evidence (I : IonChannelDynamics)
    (E : IonChannelEvidence I) : IonChannelClosed I := by
  exact And.intro E.voltageDependenceClosed (And.intro E.ionSelectivityClosed E.kineticsClosed)

end NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean
end HautevilleHouse