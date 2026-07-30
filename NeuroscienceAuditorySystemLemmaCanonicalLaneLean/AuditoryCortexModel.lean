import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure AuditoryCortexModelPackage where
  tonotopicMap : Type
  coreRegion : Type
  beltRegion : Type
  parabeltRegion : Type
  hierarchicalProcessing : Prop
  soundLocalization : Prop
  patternRecognition : Prop
  plasticity : Prop

structure AuditoryCortexModelEvidence (M : AuditoryCortexModelPackage) where
  hierarchicalProcessingClosed : M.hierarchicalProcessing
  soundLocalizationClosed : M.soundLocalization
  patternRecognitionClosed : M.patternRecognition
  plasticityClosed : M.plasticity

def AuditoryCortexModelClosed (M : AuditoryCortexModelPackage) : Prop :=
  M.hierarchicalProcessing ∧ M.soundLocalization ∧
  M.patternRecognition ∧ M.plasticity

theorem auditory_cortex_model_closed_from_evidence
    (M : AuditoryCortexModelPackage) (E : AuditoryCortexModelEvidence M) :
    AuditoryCortexModelClosed M := by
  exact And.intro E.hierarchicalProcessingClosed
    (And.intro E.soundLocalizationClosed
      (And.intro E.patternRecognitionClosed E.plasticityClosed))

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse