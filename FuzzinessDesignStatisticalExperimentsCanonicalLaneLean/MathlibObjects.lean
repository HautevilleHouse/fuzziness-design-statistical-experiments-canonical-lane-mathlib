import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzinessDesignStatisticalExperimentsCanonicalLaneLean

structure StatisticalModel (Ω σ : Type) where
  sampleSpace : Set Ω
  parameterSpace : Type
  density : Ω → σ → ℝ

exponentialFamily : Prop

structure SufficientStatistic (Ω σ : Type) where
  statistic : Ω → σ
  factorization : Prop

def sufficiency_closed (S : SufficientStatistic Ω σ) : Prop :=
  S.factorization

structure MLE (Ω σ : Type) where
  estimator : σ → Ω
  consistency : Prop
  asymptoticNormality : Prop

structure HypTest (Ω σ : Type) where
  testStatistic : Ω → ℝ
  criticalRegion : Set Ω
  size : ℝ
  power : ℝ

structure NeymanPearsonLemma (Ω σ : Type) where
  hypothesis : Ω → Prop
  alternative : Ω → Prop
  lrt : Ω → ℝ
  mostPowerful : Prop

end FuzzinessDesignStatisticalExperimentsCanonicalLaneLean
end HautevilleHouse