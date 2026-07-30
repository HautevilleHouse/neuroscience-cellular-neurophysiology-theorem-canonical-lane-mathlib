import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean

structure SynapticTransmission where
  neurotransmitterRelease : Type u
  receptorBinding : Type v
  postsynapticResponse : Type w
  quantalRelease : Prop
  receptorDynamics : Prop
  summationTemporal : Prop

structure SynapticEvidence (S : SynapticTransmission) where
  quantalReleaseClosed : S.quantalRelease
  receptorDynamicsClosed : S.receptorDynamics
  summationTemporalClosed : S.summationTemporal

def SynapticClosed (S : SynapticTransmission) : Prop :=
  S.quantalRelease ∧ S.receptorDynamics ∧ S.summationTemporal

theorem synaptic_closed_from_evidence (S : SynapticTransmission)
    (E : SynapticEvidence S) : SynapticClosed S := by
  exact And.intro E.quantalReleaseClosed (And.intro E.receptorDynamicsClosed E.summationTemporalClosed)

end NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean
end HautevilleHouse