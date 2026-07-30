import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure AuditoryBrainstemCircuitPackage where
  cochlearNucleusProjections : Prop
  superiorOliveSoundLocalization : Prop
  lateralLemniscusPathway : Prop
  inferiorColliculusIntegration : Prop

structure AuditoryBrainstemCircuitEvidence (B : AuditoryBrainstemCircuitPackage) where
  cochlearNucleusProjectionsClosed : B.cochlearNucleusProjections
  superiorOliveSoundLocalizationClosed : B.superiorOliveSoundLocalization
  lateralLemniscusPathwayClosed : B.lateralLemniscusPathway
  inferiorColliculusIntegrationClosed : B.inferiorColliculusIntegration

def AuditoryBrainstemCircuitClosed (B : AuditoryBrainstemCircuitPackage) : Prop :=
  B.cochlearNucleusProjections ∧ B.superiorOliveSoundLocalization ∧
  B.lateralLemniscusPathway ∧ B.inferiorColliculusIntegration

theorem auditory_brainstem_circuit_closed_from_evidence (B : AuditoryBrainstemCircuitPackage) (E : AuditoryBrainstemCircuitEvidence B) :
    AuditoryBrainstemCircuitClosed B := by
  exact And.intro E.cochlearNucleusProjectionsClosed
    (And.intro E.superiorOliveSoundLocalizationClosed
      (And.intro E.lateralLemniscusPathwayClosed E.inferiorColliculusIntegrationClosed))

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse