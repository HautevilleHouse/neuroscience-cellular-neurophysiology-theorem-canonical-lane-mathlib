import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean

/-!
# Hebbian Synaptic Plasticity Package
-/

structure SynapticWeight where
  initialWeight : Prop
  learningRate : Prop
  weightBound : Prop

structure HebbianPlasticityRule where
  preSynapticActivity : Prop
  postSynapticActivity : Prop
  weightUpdate : Prop
  correlationDetected : Prop

structure HebbianPlasticityPackage (W : SynapticWeight) (R : HebbianPlasticityRule) where
  weightDynamics : Prop
  hebbianUpdateLaw : Prop
  stabilityCondition : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  weightNormalization : Prop

structure HebbianPlasticityEvidence {W : SynapticWeight} {R : HebbianPlasticityRule}
    (HP : HebbianPlasticityPackage W R) where
  weightDynamicsClosed : HP.weightDynamics
  hebbianUpdateLawClosed : HP.hebbianUpdateLaw
  stabilityConditionClosed : HP.stabilityCondition
  longTermPotentiationClosed : HP.longTermPotentiation
  longTermDepressionClosed : HP.longTermDepression
  weightNormalizationClosed : HP.weightNormalization

def HebbianPlasticityClosed {W : SynapticWeight} {R : HebbianPlasticityRule}
    (HP : HebbianPlasticityPackage W R) : Prop :=
  HP.weightDynamics ∧ HP.hebbianUpdateLaw ∧ HP.stabilityCondition ∧
  HP.longTermPotentiation ∧ HP.longTermDepression ∧ HP.weightNormalization

theorem hebbian_plasticity_closed_from_evidence
    {W : SynapticWeight} {R : HebbianPlasticityRule}
    (HP : HebbianPlasticityPackage W R) (E : HebbianPlasticityEvidence HP) :
    HebbianPlasticityClosed HP := by
  exact And.intro E.weightDynamicsClosed
    (And.intro E.hebbianUpdateLawClosed
      (And.intro E.stabilityConditionClosed
        (And.intro E.longTermPotentiationClosed
          (And.intro E.longTermDepressionClosed
            E.weightNormalizationClosed))))

end NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean
end HautevilleHouse
