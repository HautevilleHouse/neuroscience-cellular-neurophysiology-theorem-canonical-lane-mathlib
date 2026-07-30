import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean

structure CableEquationPackage where
  membranePotential : ℝ × ℝ → ℝ
  axialResistance : ℝ
  membraneCapacitance : ℝ
  leakConductance : ℝ
  inputCurrent : ℝ × ℝ → ℝ
  spaceConstant : ℝ
  timeConstant : ℝ
  cableEquationHolds : Prop
  cableEquationHoldsTerm : cableEquationHolds

structure CableEquationEvidence (C : CableEquationPackage) where
  cableEquationHoldsClosed : C.cableEquationHolds

def CableEquationClosed (C : CableEquationPackage) : Prop :=
  C.cableEquationHolds

theorem cable_equation_closed_from_evidence (C : CableEquationPackage) (E : CableEquationEvidence C) :
    CableEquationClosed C := by
  exact E.cableEquationHoldsClosed

end NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean
end HautevilleHouse