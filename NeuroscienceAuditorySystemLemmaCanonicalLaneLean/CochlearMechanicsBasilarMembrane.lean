import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure CochlearMechanicsBasilarMembranePackage where
  fluidPressure : Type
  hairCellTransduction : Prop
  travelingWave : Prop
  frequencySelectivity : Prop
  nonlinearCompression : Prop

structure CochlearMechanicsBasilarMembraneEvidence (C : CochlearMechanicsBasilarMembranePackage) where
  hairCellTransductionClosed : C.hairCellTransduction
  travelingWaveClosed : C.travelingWave
  frequencySelectivityClosed : C.frequencySelectivity
  nonlinearCompressionClosed : C.nonlinearCompression

def CochlearMechanicsBasilarMembraneClosed (C : CochlearMechanicsBasilarMembranePackage) : Prop :=
  C.hairCellTransduction ∧ C.travelingWave ∧ C.frequencySelectivity ∧ C.nonlinearCompression

theorem cochlear_mechanics_basilar_membrane_closed_from_evidence (C : CochlearMechanicsBasilarMembranePackage)
    (E : CochlearMechanicsBasilarMembraneEvidence C) : CochlearMechanicsBasilarMembraneClosed C := by
  exact And.intro E.hairCellTransductionClosed
    (And.intro E.travelingWaveClosed
      (And.intro E.frequencySelectivityClosed E.nonlinearCompressionClosed))

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse
