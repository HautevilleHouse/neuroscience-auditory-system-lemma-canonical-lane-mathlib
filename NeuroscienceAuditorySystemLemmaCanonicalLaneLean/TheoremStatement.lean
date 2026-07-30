import canonicalLaneMathlib.Core

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure AuditoryAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  synapseModel : Type
  synapseCount : Nat
  hebbianLearningRule : Prop
  conclusion : hebbianLearningRule

def AuditoryWitnessClosed (O : AuditoryAdmittedObject) : Prop :=
  O.hebbianLearningRule

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse