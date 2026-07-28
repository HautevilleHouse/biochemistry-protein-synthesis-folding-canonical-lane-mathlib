import BiochemistryProteinSynthesisFoldingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinSynthesisFoldingCanonicalLaneLean

structure ThermodynamicsPackage where
  foldingFreeEnergyNegative : Prop
  enthalpyEntropyBalance : Prop
  heatCapacityProportional : Prop
  stabilityAtPhysiologicalConditions : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  foldingFreeEnergyNegativeClosed : T.foldingFreeEnergyNegative
  enthalpyEntropyBalanceClosed : T.enthalpyEntropyBalance
  heatCapacityProportionalClosed : T.heatCapacityProportional
  stabilityAtPhysiologicalConditionsClosed : T.stabilityAtPhysiologicalConditions

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.foldingFreeEnergyNegative ∧ T.enthalpyEntropyBalance ∧
  T.heatCapacityProportional ∧ T.stabilityAtPhysiologicalConditions

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage)
    (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.foldingFreeEnergyNegativeClosed
    (And.intro E.enthalpyEntropyBalanceClosed
      (And.intro E.heatCapacityProportionalClosed
        E.stabilityAtPhysiologicalConditionsClosed))

end BiochemistryProteinSynthesisFoldingCanonicalLaneLean
end HautevilleHouse
