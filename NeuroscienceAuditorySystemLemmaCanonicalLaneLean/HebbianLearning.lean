import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure HebbianSynapticPlasticity where
  preSynapticActivity : ℝ → ℝ
  postSynapticActivity : ℝ → ℝ
  synapticWeight : ℝ → ℝ
  learningRate : ℝ
  weightUpdateRule : Prop
  stabilityCondition : Prop

structure HebbianPlasticityEvidence (H : HebbianSynapticPlasticity) where
  weightUpdateRuleClosed : H.weightUpdateRule
  stabilityConditionClosed : H.stabilityCondition

def HebbianPlasticityClosed (H : HebbianSynapticPlasticity) : Prop :=
  H.weightUpdateRule ∧ H.stabilityCondition

theorem hebbian_plasticity_closed_from_evidence (H : HebbianSynapticPlasticity) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.weightUpdateRuleClosed E.stabilityConditionClosed

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse