import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

structure MembranePotentialSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MembranePotentialAdmittedObject where
  space : MembranePotentialSpace
  membranePotentialTheoremStatement : Prop
  conclusion : membranePotentialTheoremStatement

def MembranePotentialWitnessClosed (O : MembranePotentialAdmittedObject) : Prop :=
  O.membranePotentialTheoremStatement

theorem membrane_potential_witness_closed_iff (O : MembranePotentialAdmittedObject) :
    MembranePotentialWitnessClosed O ↔ O.membranePotentialTheoremStatement := by
  exact Iff.rfl

end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
end HautevilleHouse