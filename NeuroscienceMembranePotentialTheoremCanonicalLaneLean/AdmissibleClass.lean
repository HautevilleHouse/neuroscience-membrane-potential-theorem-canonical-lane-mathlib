import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMembranePotentialTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : NeuroscienceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NeuroscienceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceMembranePotentialTheoremCanonicalLaneLean
end HautevilleHouse