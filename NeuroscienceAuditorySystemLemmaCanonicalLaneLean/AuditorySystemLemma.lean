import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure AuditorySystemLemmaPackage where
  frequencyTuning : Prop
  temporalCoding : Prop
  soundLocalization : Prop
  auditoryCortexModel : AuditoryCortexModel
  cochlearMechanics : CochlearMechanicsPackage
  perceptionBoundary : AuditoryPerceptionBoundaryPackage
  lemmaClosed : Prop

structure AuditorySystemLemmaEvidence (L : AuditorySystemLemmaPackage) where
  frequencyTuningClosed : L.frequencyTuning
  temporalCodingClosed : L.temporalCoding
  soundLocalizationClosed : L.soundLocalization
  auditoryCortexModelClosed : AuditoryCortexModelClosed L.auditoryCortexModel
  cochlearMechanicsClosed : CochlearMechanicsClosed L.cochlearMechanics
  perceptionBoundaryClosed : AuditoryPerceptionBoundaryClosed L.perceptionBoundary

def AuditorySystemLemmaClosed (L : AuditorySystemLemmaPackage) : Prop :=
  L.frequencyTuning ∧ L.temporalCoding ∧ L.soundLocalization ∧
  AuditoryCortexModelClosed L.auditoryCortexModel ∧
  CochlearMechanicsClosed L.cochlearMechanics ∧
  AuditoryPerceptionBoundaryClosed L.perceptionBoundary

theorem auditory_system_lemma_closed_from_evidence (L : AuditorySystemLemmaPackage) (E : AuditorySystemLemmaEvidence L) :
    AuditorySystemLemmaClosed L := by
  exact And.intro E.frequencyTuningClosed
    (And.intro E.temporalCodingClosed
      (And.intro E.soundLocalizationClosed
        (And.intro E.auditoryCortexModelClosed
          (And.intro E.cochlearMechanicsClosed E.perceptionBoundaryClosed))))

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse