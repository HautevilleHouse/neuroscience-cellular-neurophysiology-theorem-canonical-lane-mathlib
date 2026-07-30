import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean

/-!
# Neural Field Theory Package
-/

structure NeuralFieldKernel where
  synapticKernel : Prop
  connectivityProfile : Prop
  spatialScale : Prop
  temporalScale : Prop

structure NeuralFieldDynamics where
  activationFunction : Prop
  firingRateEquation : Prop
  bumpSolution : Prop
  travelingWave : Prop

structure NeuralFieldPackage (K : NeuralFieldKernel) (D : NeuralFieldDynamics) where
  fieldEquation : Prop
  stationarySolution : Prop
  stabilityAnalysis : Prop
  patternFormation : Prop
  parameterConstraints : Prop

structure NeuralFieldEvidence {K : NeuralFieldKernel} {D : NeuralFieldDynamics}
    (NF : NeuralFieldPackage K D) where
  fieldEquationClosed : NF.fieldEquation
  stationarySolutionClosed : NF.stationarySolution
  stabilityAnalysisClosed : NF.stabilityAnalysis
  patternFormationClosed : NF.patternFormation
  parameterConstraintsClosed : NF.parameterConstraints

def NeuralFieldClosed {K : NeuralFieldKernel} {D : NeuralFieldDynamics}
    (NF : NeuralFieldPackage K D) : Prop :=
  NF.fieldEquation ∧ NF.stationarySolution ∧ NF.stabilityAnalysis ∧
  NF.patternFormation ∧ NF.parameterConstraints

theorem neural_field_closed_from_evidence
    {K : NeuralFieldKernel} {D : NeuralFieldDynamics}
    (NF : NeuralFieldPackage K D) (E : NeuralFieldEvidence NF) :
    NeuralFieldClosed NF := by
  exact And.intro E.fieldEquationClosed
    (And.intro E.stationarySolutionClosed
      (And.intro E.stabilityAnalysisClosed
        (And.intro E.patternFormationClosed
          E.parameterConstraintsClosed)))

end NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean
end HautevilleHouse
