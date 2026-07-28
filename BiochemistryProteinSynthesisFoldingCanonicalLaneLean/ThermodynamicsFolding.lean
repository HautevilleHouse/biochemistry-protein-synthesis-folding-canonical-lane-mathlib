import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinSynthesisFoldingCanonicalLaneLean

structure ThermodynamicsFoldingPackage where
  gibbsFreeEnergyEquation : Prop
  enthalpyAndEntropyContributions : Prop
  foldingEquilibrium : Prop
  temperatureDependence : Prop

structure ThermodynamicsFoldingEvidence (T : ThermodynamicsFoldingPackage) where
  gibbsFreeEnergyEquationClosed : T.gibbsFreeEnergyEquation
  enthalpyAndEntropyContributionsClosed : T.enthalpyAndEntropyContributions
  foldingEquilibriumClosed : T.foldingEquilibrium
  temperatureDependenceClosed : T.temperatureDependence

def ThermodynamicsFoldingClosed (T : ThermodynamicsFoldingPackage) : Prop :=
  T.gibbsFreeEnergyEquation ∧ T.enthalpyAndEntropyContributions ∧ T.foldingEquilibrium ∧ T.temperatureDependence

theorem thermodynamics_folding_closed_from_evidence
    (T : ThermodynamicsFoldingPackage) (E : ThermodynamicsFoldingEvidence T) :
    ThermodynamicsFoldingClosed T := by
  exact And.intro E.gibbsFreeEnergyEquationClosed
    (And.intro E.enthalpyAndEntropyContributionsClosed
      (And.intro E.foldingEquilibriumClosed E.temperatureDependenceClosed))

end BiochemistryProteinSynthesisFoldingCanonicalLaneLean
end HautevilleHouse