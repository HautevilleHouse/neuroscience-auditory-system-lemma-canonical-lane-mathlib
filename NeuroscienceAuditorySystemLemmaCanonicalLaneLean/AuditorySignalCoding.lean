import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure AuditorySignalCodingPackage where
  soundPressureWave : Type
  hairCellTransduction : Type
  nerveFiringPattern : Type
  frequencyTuning : Prop
  intensityCoding : Prop
  temporalPrecision : Prop

structure AuditorySignalCodingEvidence (P : AuditorySignalCodingPackage) where
  frequencyTuningClosed : P.frequencyTuning
  intensityCodingClosed : P.intensityCoding
  temporalPrecisionClosed : P.temporalPrecision

def AuditorySignalCodingClosed (P : AuditorySignalCodingPackage) : Prop :=
  P.frequencyTuning ∧ P.intensityCoding ∧ P.temporalPrecision

theorem auditory_signal_coding_closed_from_evidence
    (P : AuditorySignalCodingPackage) (E : AuditorySignalCodingEvidence P) :
    AuditorySignalCodingClosed P := by
  exact And.intro E.frequencyTuningClosed
    (And.intro E.intensityCodingClosed E.temporalPrecisionClosed)

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse