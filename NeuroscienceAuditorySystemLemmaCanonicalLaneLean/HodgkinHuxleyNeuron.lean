import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure HodgkinHuxleyNeuronPackage where
  sodiumChannelDynamics : Prop
  potassiumChannelDynamics : Prop
  leakageCurrent : Prop
  actionPotentialGeneration : Prop
  thresholdPhenomenon : Prop

structure HodgkinHuxleyNeuronEvidence (H : HodgkinHuxleyNeuronPackage) where
  sodiumChannelDynamicsClosed : H.sodiumChannelDynamics
  potassiumChannelDynamicsClosed : H.potassiumChannelDynamics
  leakageCurrentClosed : H.leakageCurrent
  actionPotentialGenerationClosed : H.actionPotentialGeneration
  thresholdPhenomenonClosed : H.thresholdPhenomenon

def HodgkinHuxleyNeuronClosed (H : HodgkinHuxleyNeuronPackage) : Prop :=
  H.sodiumChannelDynamics ∧ H.potassiumChannelDynamics ∧
  H.leakageCurrent ∧ H.actionPotentialGeneration ∧ H.thresholdPhenomenon

theorem hodgkin_huxley_neuron_closed_from_evidence (H : HodgkinHuxleyNeuronPackage) (E : HodgkinHuxleyNeuronEvidence H) :
    HodgkinHuxleyNeuronClosed H := by
  exact And.intro E.sodiumChannelDynamicsClosed
    (And.intro E.potassiumChannelDynamicsClosed
      (And.intro E.leakageCurrentClosed
        (And.intro E.actionPotentialGenerationClosed E.thresholdPhenomenonClosed)))

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse