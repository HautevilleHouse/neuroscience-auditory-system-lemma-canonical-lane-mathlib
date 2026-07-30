import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure NeuralFieldTheoryPackage where
  populationActivity : Type
  synapticallyCoupled : Prop
  firingRates : Prop
  connectivityKernel : Prop
  dynamicEquation : Prop
  volumeConduction : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheoryPackage) where
  synapticallyCoupledClosed : N.synapticallyCoupled
  firingRatesClosed : N.firingRates
  connectivityKernelClosed : N.connectivityKernel
  dynamicEquationClosed : N.dynamicEquation
  volumeConductionClosed : N.volumeConduction

def NeuralFieldTheoryClosed (N : NeuralFieldTheoryPackage) : Prop :=
  N.synapticallyCoupled ∧ N.firingRates ∧ N.connectivityKernel ∧
  N.dynamicEquation ∧ N.volumeConduction

theorem neural_field_theory_closed_from_evidence (N : NeuralFieldTheoryPackage)
    (E : NeuralFieldTheoryEvidence N) : NeuralFieldTheoryClosed N := by
  exact And.intro E.synapticallyCoupledClosed
    (And.intro E.firingRatesClosed
      (And.intro E.connectivityKernelClosed
        (And.intro E.dynamicEquationClosed E.volumeConductionClosed)))

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse
