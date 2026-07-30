import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean

structure Synapse where
  presynapticNeuron : String
  postsynapticNeuron : String
  synapticStrength : Float

structure SpikeTiming where
  presynapticTime : Float
  postsynapticTime : Float

structure HebbianPlasticityRule (syn : Synapse) where
  potentiationCondition : Prop
  depressionCondition : Prop
  weightUpdate : Float -> Float -> Float
  learningRuleClosed : Prop

structure HebbianPlasticityEvidence {syn : Synapse} (H : HebbianPlasticityRule syn) where
  potentiationConditionClosed : H.potentiationCondition
  depressionConditionClosed : H.depressionCondition
  learningRuleClosedClosed : H.learningRuleClosed

def HebbianPlasticityClosed {syn : Synapse} (H : HebbianPlasticityRule syn) : Prop :=
  H.learningRuleClosed

theorem hebbian_plasticity_closed_from_evidence {syn : Synapse} (H : HebbianPlasticityRule syn) (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact E.learningRuleClosedClosed

end NeuroscienceCellularNeurophysiologyTheoremCanonicalLaneLean
end HautevilleHouse