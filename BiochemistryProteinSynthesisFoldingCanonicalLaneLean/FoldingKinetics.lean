import BiochemistryProteinSynthesisFoldingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinSynthesisFoldingCanonicalLaneLean

structure FoldingKineticsPackage where
  foldingRate : ℝ
  temperature : ℝ
  activationEnergy : ℝ
  chevronPlot : Prop
  twoStateModel : Prop
  intermediateStates : Prop

structure FoldingKineticsEvidence (K : FoldingKineticsPackage) where
  foldingRatePositive : K.foldingRate > 0
  temperaturePositive : K.temperature > 0
  activationEnergyFinite : K.activationEnergy < ∞
  chevronPlotClosed : K.chevronPlot
  twoStateModelClosed : K.twoStateModel
  intermediateStatesClosed : K.intermediateStates

def FoldingKineticsClosed (K : FoldingKineticsPackage) : Prop :=
  K.foldingRate > 0 ∧ K.temperature > 0 ∧ K.activationEnergy < ∞ ∧
  K.chevronPlot ∧ K.twoStateModel ∧ K.intermediateStates

theorem folding_kinetics_closed_from_evidence (K : FoldingKineticsPackage)
    (E : FoldingKineticsEvidence K) : FoldingKineticsClosed K := by
  exact And.intro E.foldingRatePositive
    (And.intro E.temperaturePositive
      (And.intro E.activationEnergyFinite
        (And.intro E.chevronPlotClosed
          (And.intro E.twoStateModelClosed E.intermediateStatesClosed))))

end BiochemistryProteinSynthesisFoldingCanonicalLaneLean
end HautevilleHouse