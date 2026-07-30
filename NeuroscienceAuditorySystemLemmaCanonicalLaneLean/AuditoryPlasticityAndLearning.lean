import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure AuditoryPlasticityAndLearningPackage where
  hebbianSynapticPlasticity : Prop
  mapReorganizationAfterLesion : Prop
  perceptualLearning : Prop
  criticalPeriod : Prop

structure AuditoryPlasticityAndLearningEvidence (P : AuditoryPlasticityAndLearningPackage) where
  hebbianSynapticPlasticityClosed : P.hebbianSynapticPlasticity
  mapReorganizationAfterLesionClosed : P.mapReorganizationAfterLesion
  perceptualLearningClosed : P.perceptualLearning
  criticalPeriodClosed : P.criticalPeriod

def AuditoryPlasticityAndLearningClosed (P : AuditoryPlasticityAndLearningPackage) : Prop :=
  P.hebbianSynapticPlasticity ∧ P.mapReorganizationAfterLesion ∧
  P.perceptualLearning ∧ P.criticalPeriod

theorem auditory_plasticity_and_learning_closed_from_evidence (P : AuditoryPlasticityAndLearningPackage) (E : AuditoryPlasticityAndLearningEvidence P) :
    AuditoryPlasticityAndLearningClosed P := by
  exact And.intro E.hebbianSynapticPlasticityClosed
    (And.intro E.mapReorganizationAfterLesionClosed
      (And.intro E.perceptualLearningClosed E.criticalPeriodClosed))

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse