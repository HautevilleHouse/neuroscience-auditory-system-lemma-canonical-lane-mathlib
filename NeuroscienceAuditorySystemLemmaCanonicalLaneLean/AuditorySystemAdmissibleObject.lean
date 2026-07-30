import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure AuditoryAdmittedObject where
  cochlearNucleusModel : Type
  tonotopicMap : Prop
  soundLocalizationCircuit : Prop
  spikeTimingPrecision : Prop
  conclusion : tonotopicMap ∧ soundLocalizationCircuit ∧ spikeTimingPrecision

structure AuditoryEndgameState where
  object : AuditoryAdmittedObject

def AuditoryWitnessClosed (O : AuditoryAdmittedObject) : Prop :=
  O.conclusion

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse