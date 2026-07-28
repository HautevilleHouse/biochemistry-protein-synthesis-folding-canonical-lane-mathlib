import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinSynthesisFoldingCanonicalLaneLean

structure EnergyLandscapePackage where
  freeEnergySurface : Type u
  globalMinimum : Prop
  localMinima : Prop
  transitionStatesResolved : Prop
  stabilityPredicted : Prop

definitionallyEnergyLandscapePackage : EnergyLandscapePackage := {
  freeEnergySurface := Unit,
  globalMinimum := True,
  localMinima := True,
  transitionStatesResolved := True,
  stabilityPredicted := True
}

structure EnergyLandscapeEvidence (E : EnergyLandscapePackage) where
  globalMinimumClosed : E.globalMinimum
  localMinimaClosed : E.localMinima
  transitionStatesResolvedClosed : E.transitionStatesResolved
  stabilityPredictedClosed : E.stabilityPredicted

def EnergyLandscapeClosed (E : EnergyLandscapePackage) : Prop :=
  E.globalMinimum ∧ E.localMinima ∧ E.transitionStatesResolved ∧ E.stabilityPredicted

theorem energy_landscape_closed_from_evidence (E : EnergyLandscapePackage)
    (ev : EnergyLandscapeEvidence E) : EnergyLandscapeClosed E := by
  exact And.intro ev.globalMinimumClosed
    (And.intro ev.localMinimaClosed
      (And.intro ev.transitionStatesResolvedClosed ev.stabilityPredictedClosed))

end BiochemistryProteinSynthesisFoldingCanonicalLaneLean
end HautevilleHouse