import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean

structure NeuriteSegment where
  length : Float
  diameter : Float
  axialResistance : Float
  membraneResistance : Float
  membraneCapacitance : Float

structure CableEquation (seg : NeuriteSegment) where
  voltageAlongSegment : Float -> Float -> Float
  boundaryConditions : Prop
  cableEquationClosed : Prop

structure CableEvidence {seg : NeuriteSegment} (C : CableEquation seg) where
  voltageClosed : C.voltageAlongSegment 0 0 = 0
  boundaryConditionsClosed : C.boundaryConditions
  cableEquationClosedClosed : C.cableEquationClosed

def CableClosed {seg : NeuriteSegment} (C : CableEquation seg) : Prop :=
  C.cableEquationClosed

theorem cable_closed_from_evidence {seg : NeuriteSegment} (C : CableEquation seg) (E : CableEvidence C) : CableClosed C := by
  exact E.cableEquationClosedClosed

end NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean
end HautevilleHouse