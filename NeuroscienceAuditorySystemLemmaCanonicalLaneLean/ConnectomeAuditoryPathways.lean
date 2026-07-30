import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure ConnectomeAuditoryPathwaysPackage where
  auditoryNerve : Type
  cochlearNucleus : Prop
  superiorOlive : Prop
  inferiorColliculus : Prop
  medialGeniculate : Prop
  auditoryCortex : Prop

structure ConnectomeAuditoryPathwaysEvidence (C : ConnectomeAuditoryPathwaysPackage) where
  auditoryNerveClosed : C.auditoryNerve
  cochlearNucleusClosed : C.cochlearNucleus
  superiorOliveClosed : C.superiorOlive
  inferiorColliculusClosed : C.inferiorColliculus
  medialGeniculateClosed : C.medialGeniculate
  auditoryCortexClosed : C.auditoryCortex

def ConnectomeAuditoryPathwaysClosed (C : ConnectomeAuditoryPathwaysPackage) : Prop :=
  C.auditoryNerve ∧ C.cochlearNucleus ∧ C.superiorOlive ∧
  C.inferiorColliculus ∧ C.medialGeniculate ∧ C.auditoryCortex

theorem connectome_auditory_pathways_closed_from_evidence (C : ConnectomeAuditoryPathwaysPackage)
    (E : ConnectomeAuditoryPathwaysEvidence C) : ConnectomeAuditoryPathwaysClosed C := by
  exact And.intro E.auditoryNerveClosed
    (And.intro E.cochlearNucleusClosed
      (And.intro E.superiorOliveClosed
        (And.intro E.inferiorColliculusClosed
          (And.intro E.medialGeniculateClosed E.auditoryCortexClosed))))

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse
