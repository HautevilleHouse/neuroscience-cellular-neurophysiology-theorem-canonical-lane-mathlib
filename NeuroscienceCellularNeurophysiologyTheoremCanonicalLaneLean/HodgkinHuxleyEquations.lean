import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean

/-!
# Hodgkin-Huxley Equations Package
-/

structure HodgkinHuxleyParameters where
  gNa : Prop
  gK : Prop
  gL : Prop
  VNa : Prop
  VK : Prop
  VL : Prop
  Cm : Prop

structure HodgkinHuxleyGatingVariables where
  m : Prop
  n : Prop
  h : Prop
  mInfinity : Prop
  nInfinity : Prop
  hInfinity : Prop
  tauM : Prop
  tauN : Prop
  tauH : Prop

structure HodgkinHuxleyPackage (P : HodgkinHuxleyParameters) (G : HodgkinHuxleyGatingVariables) where
  membraneCurrentEquation : Prop
  gatingDynamics : Prop
  initialConditions : Prop
  actionPotentialGenerated : Prop
  parametersPhysiologicallyPlausible : Prop

structure HodgkinHuxleyEvidence {P : HodgkinHuxleyParameters} {G : HodgkinHuxleyGatingVariables}
    (HH : HodgkinHuxleyPackage P G) where
  membraneCurrentEquationClosed : HH.membraneCurrentEquation
  gatingDynamicsClosed : HH.gatingDynamics
  initialConditionsClosed : HH.initialConditions
  actionPotentialGeneratedClosed : HH.actionPotentialGenerated
  parametersPhysiologicallyPlausibleClosed : HH.parametersPhysiologicallyPlausible

def HodgkinHuxleyClosed {P : HodgkinHuxleyParameters} {G : HodgkinHuxleyGatingVariables}
    (HH : HodgkinHuxleyPackage P G) : Prop :=
  HH.membraneCurrentEquation ∧ HH.gatingDynamics ∧ HH.initialConditions ∧
  HH.actionPotentialGenerated ∧ HH.parametersPhysiologicallyPlausible

theorem hodgkin_huxley_closed_from_evidence
    {P : HodgkinHuxleyParameters} {G : HodgkinHuxleyGatingVariables}
    (HH : HodgkinHuxleyPackage P G) (E : HodgkinHuxleyEvidence HH) :
    HodgkinHuxleyClosed HH := by
  exact And.intro E.membraneCurrentEquationClosed
    (And.intro E.gatingDynamicsClosed
      (And.intro E.initialConditionsClosed
        (And.intro E.actionPotentialGeneratedClosed
          E.parametersPhysiologicallyPlausibleClosed)))

end NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean
end HautevilleHouse
