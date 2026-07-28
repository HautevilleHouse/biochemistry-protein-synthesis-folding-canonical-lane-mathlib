import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinSynthesisFoldingCanonicalLaneLean

structure ThermodynamicsPackage where
  foldedState : Prop
  unfoldedState : Prop
  stabilityFreeEnergy : ℝ
  enthalpyChange : ℝ
  entropyChange : ℝ
  meltingTemperature : ℝ

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  foldedStateClosed : T.foldedState
  unfoldedStateClosed : T.unfoldedState
  stabilityFreeEnergyClosed : T.stabilityFreeEnergy < 0

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.foldedState ∧ T.unfoldedState ∧ (T.stabilityFreeEnergy < 0)

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage)
    (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.foldedStateClosed (And.intro E.unfoldedStateClosed E.stabilityFreeEnergyClosed)

end BiochemistryProteinSynthesisFoldingCanonicalLaneLean
end HautevilleHouse