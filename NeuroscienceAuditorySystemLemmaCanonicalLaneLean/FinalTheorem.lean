import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceAuditorySystemLemmaCanonicalLaneLean.AuditoryCochleaMechanics
import HautevilleHouse.NeuroscienceAuditorySystemLemmaCanonicalLaneLean.AuditoryPathwayEncoding
import HautevilleHouse.NeuroscienceAuditorySystemLemmaCanonicalLaneLean.AuditoryCortexProcessing
import HautevilleHouse.NeuroscienceAuditorySystemLemmaCanonicalLaneLean.SoundLocalizationMechanism
import HautevilleHouse.NeuroscienceAuditorySystemLemmaCanonicalLaneLean.AuditorySceneAnalysis
import HautevilleHouse.NeuroscienceAuditorySystemLemmaCanonicalLaneLean.AuditoryLearningPlasticity

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  cochlear_mechanics_bridge A ∧ pathway_encoding_bridge A ∧ cortex_processing_bridge A ∧
  sound_localization_bridge A ∧ scene_analysis_bridge A ∧ plasticity_bridge A

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def AuditorySystemClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem auditory_system_endgame (A : AdmissibleClass) : AuditorySystemClosure A := by
  refine And.intro ?_ (A.gateWitness)
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ (by
    exact A.gateWitness
  )))))
  · exact A.gateWitness
  · exact A.gateWitness
  · exact A.gateWitness
  · exact A.gateWitness
  · exact A.gateWitness

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse