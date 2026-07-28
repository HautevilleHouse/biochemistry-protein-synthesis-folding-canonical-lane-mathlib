import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinSynthesisFoldingCanonicalLaneLean

structure ProteinFoldingKineticsPackage where
  reactionRates : Prop
  foldingPathwayModel : Prop
  rateLimitingStep : Prop
  intermediatesStability : Prop

structure ProteinFoldingKineticsEvidence (P : ProteinFoldingKineticsPackage) where
  reactionRatesClosed : P.reactionRates
  foldingPathwayModelClosed : P.foldingPathwayModel
  rateLimitingStepClosed : P.rateLimitingStep
  intermediatesStabilityClosed : P.intermediatesStability

def ProteinFoldingKineticsClosed (P : ProteinFoldingKineticsPackage) : Prop :=
  P.reactionRates ∧ P.foldingPathwayModel ∧ P.rateLimitingStep ∧ P.intermediatesStability

theorem protein_folding_kinetics_closed_from_evidence
    (P : ProteinFoldingKineticsPackage) (E : ProteinFoldingKineticsEvidence P) :
    ProteinFoldingKineticsClosed P := by
  exact And.intro E.reactionRatesClosed
    (And.intro E.foldingPathwayModelClosed
      (And.intro E.rateLimitingStepClosed E.intermediatesStabilityClosed))

end BiochemistryProteinSynthesisFoldingCanonicalLaneLean
end HautevilleHouse