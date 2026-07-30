import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure InterauralTimeDifference where
  soundSourceAzimuth : ℝ
  headRadius : ℝ
  speedOfSound : ℝ
  itd : ℝ

def computeITD (azimuth : ℝ) (radius : ℝ) (speed : ℝ) : ℝ :=
  radius * (azimuth + Real.sin azimuth) / speed

structure InterauralLevelDifference where
  frequency : ℝ
  headShadow : ℝ → ℝ
  ild : ℝ

def computeILD (freq : ℝ) (shadow : ℝ → ℝ) : ℝ :=
  shadow freq

structure HeadRelatedTransferFunction where
  impulseResponse : ℝ → ℝ → ℝ
  magnitudeResponse : ℝ → ℝ → ℝ
  phaseResponse : ℝ → ℝ → ℝ

def sound_localization_bridge (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse