import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean

structure SynapticVesicleExocytosisPackage where
  vesicleDocking : Prop
  calciumInflux : Prop
  snareComplexAssembly : Prop
  vesicleFusion : Prop
  neurotransmitterRelease : Prop
  exocytosisComplete : Prop
  exocytosisCompleteTerm : exocytosisComplete

structure SynapticVesicleExocytosisEvidence (S : SynapticVesicleExocytosisPackage) where
  vesicleDockingClosed : S.vesicleDocking
  calciumInfluxClosed : S.calciumInflux
  snareComplexAssemblyClosed : S.snareComplexAssembly
  vesicleFusionClosed : S.vesicleFusion
  neurotransmitterReleaseClosed : S.neurotransmitterRelease
  exocytosisCompleteClosed : S.exocytosisComplete

def SynapticVesicleExocytosisClosed (S : SynapticVesicleExocytosisPackage) : Prop :=
  S.vesicleDocking ∧ S.calciumInflux ∧ S.snareComplexAssembly ∧
  S.vesicleFusion ∧ S.neurotransmitterRelease ∧ S.exocytosisComplete

theorem synaptic_vesicle_exocytosis_closed_from_evidence (S : SynapticVesicleExocytosisPackage) (E : SynapticVesicleExocytosisEvidence S) :
    SynapticVesicleExocytosisClosed S := by
  exact And.intro E.vesicleDockingClosed
    (And.intro E.calciumInfluxClosed
      (And.intro E.snareComplexAssemblyClosed
        (And.intro E.vesicleFusionClosed
          (And.intro E.neurotransmitterReleaseClosed
            E.exocytosisCompleteClosed))))

end NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean
end HautevilleHouse