import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure HodgkinHuxleyModel where
  membranePotential : ℝ → ℝ
  gatingVariables : ℝ → ℝ × ℝ × ℝ
  ionConductances : ℝ × ℝ × ℝ
  reversalPotentials : ℝ × ℝ × ℝ
  capacitance : ℝ
  ionCurrent : Prop
  membraneEquation : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyModel) where
  ionCurrentClosed : H.ionCurrent
  membraneEquationClosed : H.membraneEquation

def HodgkinHuxleyClosed (H : HodgkinHuxleyModel) : Prop :=
  H.membraneEquation ∧ H.ionCurrent

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyModel) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.membraneEquationClosed E.ionCurrentClosed

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse