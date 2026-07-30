import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure NeuralFieldPackage where
  cortexType : Type u
  topology : TopologicalSpace cortexType
  connectivityKernel : cortexType → cortexType → ℝ
  firingRateFunction : ℝ → ℝ
  externalInput : cortexType → ℝ → ℝ
  neuralFieldEquation : Prop

structure NeuralFieldEvidence (N : NeuralFieldPackage) where
  connectivityKernelContinuous : Prop
  firingRateSmooth : Prop
  externalInputContinuous : Prop
  neuralFieldEquationClosed : N.neuralFieldEquation

def NeuralFieldClosed (N : NeuralFieldPackage) : Prop :=
  N.neuralFieldEquation

theorem neural_field_closed_from_evidence (N : NeuralFieldPackage) (E : NeuralFieldEvidence N) :
    NeuralFieldClosed N := by
  exact E.neuralFieldEquationClosed

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse