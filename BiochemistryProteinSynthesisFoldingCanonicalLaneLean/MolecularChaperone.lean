import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryProteinSynthesisFoldingCanonicalLaneLean

structure MolecularChaperonePackage where
  chaperoneBindingAffinity : Prop
  atpHydrolysisCoupling : Prop
  foldingCageMechanism : Prop
  clientReleaseControl : Prop

structure MolecularChaperoneEvidence (M : MolecularChaperonePackage) where
  chaperoneBindingAffinityClosed : M.chaperoneBindingAffinity
  atpHydrolysisCouplingClosed : M.atpHydrolysisCoupling
  foldingCageMechanismClosed : M.foldingCageMechanism
  clientReleaseControlClosed : M.clientReleaseControl

def MolecularChaperoneClosed (M : MolecularChaperonePackage) : Prop :=
  M.chaperoneBindingAffinity ∧ M.atpHydrolysisCoupling ∧ M.foldingCageMechanism ∧ M.clientReleaseControl

theorem molecular_chaperone_closed_from_evidence
    (M : MolecularChaperonePackage) (E : MolecularChaperoneEvidence M) :
    MolecularChaperoneClosed M := by
  exact And.intro E.chaperoneBindingAffinityClosed
    (And.intro E.atpHydrolysisCouplingClosed
      (And.intro E.foldingCageMechanismClosed E.clientReleaseControlClosed))

end BiochemistryProteinSynthesisFoldingCanonicalLaneLean
end HautevilleHouse