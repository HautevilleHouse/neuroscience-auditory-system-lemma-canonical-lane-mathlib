import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure HodgkinHuxleyEquationsPackage where
  membranePotential : Type
  ionChannelConductances : Type
  potassiumActivation : Prop
  sodiumActivation : Prop
  sodiumInactivation : Prop
  leakCurrent : Prop

structure HodgkinHuxleyEquationsEvidence (H : HodgkinHuxleyEquationsPackage) where
  potassiumActivationClosed : H.potassiumActivation
  sodiumActivationClosed : H.sodiumActivation
  sodiumInactivationClosed : H.sodiumInactivation
  leakCurrentClosed : H.leakCurrent

def HodgkinHuxleyEquationsClosed (H : HodgkinHuxleyEquationsPackage) : Prop :=
  H.potassiumActivation ∧ H.sodiumActivation ∧ H.sodiumInactivation ∧ H.leakCurrent

theorem hodgkin_huxley_equations_closed_from_evidence (H : HodgkinHuxleyEquationsPackage)
    (E : HodgkinHuxleyEquationsEvidence H) : HodgkinHuxleyEquationsClosed H := by
  exact And.intro E.potassiumActivationClosed
    (And.intro E.sodiumActivationClosed
      (And.intro E.sodiumInactivationClosed E.leakCurrentClosed))

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse
