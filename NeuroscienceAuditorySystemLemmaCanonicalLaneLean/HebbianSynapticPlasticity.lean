import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure HebbianSynapticPlasticityPackage where
  synapticWeights : Type
  preSynapticActivity : Prop
  postSynapticActivity : Prop
  learningRule : Prop
  weightDynamics : Prop
  homeostasisMechanism : Prop

structure HebbianSynapticPlasticityEvidence (H : HebbianSynapticPlasticityPackage) where
  preSynapticActivityClosed : H.preSynapticActivity
  postSynapticActivityClosed : H.postSynapticActivity
  learningRuleClosed : H.learningRule
  weightDynamicsClosed : H.weightDynamics
  homeostasisMechanismClosed : H.homeostasisMechanism

def HebbianSynapticPlasticityClosed (H : HebbianSynapticPlasticityPackage) : Prop :=
  H.preSynapticActivity ∧ H.postSynapticActivity ∧ H.learningRule ∧
  H.weightDynamics ∧ H.homeostasisMechanism

theorem hebbian_synaptic_plasticity_closed_from_evidence (H : HebbianSynapticPlasticityPackage)
    (E : HebbianSynapticPlasticityEvidence H) : HebbianSynapticPlasticityClosed H := by
  exact And.intro E.preSynapticActivityClosed
    (And.intro E.postSynapticActivityClosed
      (And.intro E.learningRuleClosed
        (And.intro E.weightDynamicsClosed E.homeostasisMechanismClosed)))

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse
