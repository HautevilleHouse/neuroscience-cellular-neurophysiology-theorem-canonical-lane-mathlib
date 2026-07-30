import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean

structure NeuroPhysiologyObject where
  neuronModel : Type
  synapseModel : Type
  actionPotential : Prop
  synapticTransmission : Prop
  plasticityRule : Prop
  conclusion : actionPotential ∧ synapticTransmission ∧ plasticityRule

def NeuroPhysiologyWitnessClosed (O : NeuroPhysiologyObject) : Prop :=
  O.actionPotential ∧ O.synapticTransmission ∧ O.plasticityRule

end NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean
end HautevilleHouse