import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean

structure ConnectomicsPackage where
  neuronSet : Type
  synapseRelation : neuronSet → neuronSet → Prop
  graphConnectivity : Type
  smallWorldProperty : Prop
  modularStructure : Prop
  smallWorldPropertyTerm : smallWorldProperty
  modularStructureTerm : modularStructure

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.smallWorldProperty ∧ C.modularStructure

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) :
    ConnectomicsClosed C := by
  exact And.intro E.smallWorldPropertyClosed E.modularStructureClosed

end NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean
end HautevilleHouse