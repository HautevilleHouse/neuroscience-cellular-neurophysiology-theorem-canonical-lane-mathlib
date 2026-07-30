import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : NeuroPhysiologyObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NeuroPhysiologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean
end HautevilleHouse