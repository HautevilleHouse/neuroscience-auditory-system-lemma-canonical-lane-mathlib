import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure SoundLocalizationITDILD where
  interauralTimeDifference : Type
  interauralLevelDifference : Prop
  coincidenceDetection : Prop
  medialSuperiorOlive : Prop
  lateralSuperiorOlive : Prop
  binauralCueIntegration : Prop

structure SoundLocalizationEvidence (S : SoundLocalizationITDILD) where
  interauralTimeDifferenceClosed : S.interauralTimeDifference
  interauralLevelDifferenceClosed : S.interauralLevelDifference
  coincidenceDetectionClosed : S.coincidenceDetection
  medialSuperiorOliveClosed : S.medialSuperiorOlive
  lateralSuperiorOliveClosed : S.lateralSuperiorOlive
  binauralCueIntegrationClosed : S.binauralCueIntegration

def SoundLocalizationClosed (S : SoundLocalizationITDILD) : Prop :=
  S.interauralTimeDifference ∧ S.interauralLevelDifference ∧
  S.coincidenceDetection ∧ S.medialSuperiorOlive ∧
  S.lateralSuperiorOlive ∧ S.binauralCueIntegration

theorem sound_localization_closed_from_evidence (S : SoundLocalizationITDILD)
    (E : SoundLocalizationEvidence S) : SoundLocalizationClosed S := by
  exact And.intro E.interauralTimeDifferenceClosed
    (And.intro E.interauralLevelDifferenceClosed
      (And.intro E.coincidenceDetectionClosed
        (And.intro E.medialSuperiorOliveClosed
          (And.intro E.lateralSuperiorOliveClosed E.binauralCueIntegrationClosed))))

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse
