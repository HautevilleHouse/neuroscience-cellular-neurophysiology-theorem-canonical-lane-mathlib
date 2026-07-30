import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean

structure HodgkinHuxleyModel where
  membranePotential : Type u
  potassiumConductance : Type v
  sodiumConductance : Type w
  leakageConductance : Type x
  gatingVariables : Type y
  capacitance : Prop
  ionChannelDynamics : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyEvidence (M : HodgkinHuxleyModel) where
  capacitanceClosed : M.capacitance
  ionChannelDynamicsClosed : M.ionChannelDynamics
  actionPotentialGenerationClosed : M.actionPotentialGeneration

def HodgkinHuxleyClosed (M : HodgkinHuxleyModel) : Prop :=
  M.capacitance ∧ M.ionChannelDynamics ∧ M.actionPotentialGeneration

theorem hodgkin_huxley_closed_from_evidence (M : HodgkinHuxleyModel)
    (E : HodgkinHuxleyEvidence M) : HodgkinHuxleyClosed M := by
  exact And.intro E.capacitanceClosed (And.intro E.ionChannelDynamicsClosed E.actionPotentialGenerationClosed)

end NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean
end HautevilleHouse