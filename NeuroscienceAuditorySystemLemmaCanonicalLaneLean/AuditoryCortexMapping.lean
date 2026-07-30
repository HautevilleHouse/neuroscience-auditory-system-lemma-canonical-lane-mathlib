import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure TonotopicMapping where
  cochlearFrequencyAxis : ℝ → ℝ
  corticalFrequencyMap : ℝ → ℝ
  tonotopicOrderPreserved : Prop
  frequencySelectivity : Prop

structure TonotopicMappingEvidence (T : TonotopicMapping) where
  tonotopicOrderPreservedClosed : T.tonotopicOrderPreserved
  frequencySelectivityClosed : T.frequencySelectivity

def TonotopicMappingClosed (T : TonotopicMapping) : Prop :=
  T.tonotopicOrderPreserved ∧ T.frequencySelectivity

theorem tonotopic_mapping_closed_from_evidence (T : TonotopicMapping) (E : TonotopicMappingEvidence T) :
    TonotopicMappingClosed T := by
  exact And.intro E.tonotopicOrderPreservedClosed E.frequencySelectivityClosed

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse