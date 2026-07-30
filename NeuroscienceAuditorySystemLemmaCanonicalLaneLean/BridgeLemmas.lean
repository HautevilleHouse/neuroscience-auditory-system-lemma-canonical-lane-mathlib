import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AuditoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse