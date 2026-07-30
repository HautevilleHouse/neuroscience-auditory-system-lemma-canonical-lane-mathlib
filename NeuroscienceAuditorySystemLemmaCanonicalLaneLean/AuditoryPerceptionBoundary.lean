import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure AuditoryPerceptionBoundaryPackage where
  perceptualCategory : Type u
  auditoryObject : Type v
  soundLocalization : Prop
  patternRecognition : Prop
  auditorySceneAnalysis : Prop
  soundLocalizationTerm : soundLocalization
  patternRecognitionTerm : patternRecognition
  auditorySceneAnalysisTerm : auditorySceneAnalysis

structure AuditoryPerceptionBoundaryEvidence (P : AuditoryPerceptionBoundaryPackage) where
  soundLocalizationClosed : P.soundLocalization
  patternRecognitionClosed : P.patternRecognition
  auditorySceneAnalysisClosed : P.auditorySceneAnalysis

def AuditoryPerceptionBoundaryClosed (P : AuditoryPerceptionBoundaryPackage) : Prop :=
  P.soundLocalization ∧ P.patternRecognition ∧ P.auditorySceneAnalysis

theorem auditory_perception_boundary_closed_from_evidence (P : AuditoryPerceptionBoundaryPackage) (E : AuditoryPerceptionBoundaryEvidence P) :
    AuditoryPerceptionBoundaryClosed P := by
  exact And.intro E.soundLocalizationClosed (And.intro E.patternRecognitionClosed E.auditorySceneAnalysisClosed)

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse