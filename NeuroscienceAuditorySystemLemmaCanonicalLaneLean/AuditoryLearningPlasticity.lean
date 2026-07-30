import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAuditorySystemLemmaCanonicalLaneLean

structure HebbianPlasticityRule where
  preSynapticActivity : ℝ → ℝ
  postSynapticActivity : ℝ → ℝ
  learningRate : ℝ
  weightChange : ℝ → ℝ

def hebbianWeightUpdate (pre post lr : ℝ) : ℝ :=
  lr * pre * post

structure SpikeTimingDependentPlasticity where
  prePostInterval : ℝ
  potentiationMagnitude : ℝ
  depressionMagnitude : ℝ
  stdpCurve : ℝ → ℝ

def stdpCurve (Δt : ℝ) (Aplus Aminus τ τ' : ℝ) : ℝ :=
  if Δt ≥ 0 then
    Aplus * Real.exp (-Δt / τ)
  else
    -Aminus * Real.exp (Δt / τ')

structure TonotopicMapReorganization where
  originalMap : ℝ → ℝ
  reorganizedMap : ℝ → ℝ
  deprivationFrequency : ℝ
  plasticityTimescale : ℝ

def plasticity_bridge (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

end NeuroscienceAuditorySystemLemmaCanonicalLaneLean
end HautevilleHouse