import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure AuditoryCortexTonotopyPackage where
  frequencyMap : Type
  cochlearNuclei : Prop
  tonotopicGradient : Prop
  corticalColumns : Prop
  lateralInhibition : Prop

structure AuditoryCortexTonotopyEvidence (A : AuditoryCortexTonotopyPackage) where
  cochlearNucleiClosed : A.cochlearNuclei
  tonotopicGradientClosed : A.tonotopicGradient
  corticalColumnsClosed : A.corticalColumns
  lateralInhibitionClosed : A.lateralInhibition

def AuditoryCortexTonotopyClosed (A : AuditoryCortexTonotopyPackage) : Prop :=
  A.cochlearNuclei ∧ A.tonotopicGradient ∧ A.corticalColumns ∧ A.lateralInhibition

theorem auditory_cortex_tonotopy_closed_from_evidence (A : AuditoryCortexTonotopyPackage)
    (E : AuditoryCortexTonotopyEvidence A) : AuditoryCortexTonotopyClosed A := by
  exact And.intro E.cochlearNucleiClosed
    (And.intro E.tonotopicGradientClosed
      (And.intro E.corticalColumnsClosed E.lateralInhibitionClosed))

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse
