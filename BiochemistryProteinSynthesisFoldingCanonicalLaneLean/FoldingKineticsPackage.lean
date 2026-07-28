import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinSynthesisFoldingCanonicalLaneLean

structure FoldingKineticsPackage where
  rateConstants : Type
  foldingRate : ℝ
  unfoldingRate : ℝ
  activationEnergy : ℝ
  chevronPlot : Prop
  twoStateModel : Prop

structure FoldingKineticsEvidence (K : FoldingKineticsPackage) where
  chevronPlotClosed : K.chevronPlot
  twoStateModelClosed : K.twoStateModel

def FoldingKineticsClosed (K : FoldingKineticsPackage) : Prop :=
  K.chevronPlot ∧ K.twoStateModel

theorem folding_kinetics_closed_from_evidence (K : FoldingKineticsPackage)
    (E : FoldingKineticsEvidence K) : FoldingKineticsClosed K := by
  exact And.intro E.chevronPlotClosed E.twoStateModelClosed

end BiochemistryProteinSynthesisFoldingCanonicalLaneLean
end HautevilleHouse