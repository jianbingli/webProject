package domain;

public class testcase {
	int id;
	String CaseID;
	String CaseDes;
	public String toString() {
		return "testcase [id=" + id + ", CaseID=" + CaseID + ", CaseDes="
				+ CaseDes + ", CaseReady=" + CaseReady + ", Casestep="
				+ Casestep + ", CaseResout=" + CaseResout + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCaseID() {
		return CaseID;
	}
	public void setCaseID(String caseID) {
		CaseID = caseID;
	}
	public String getCaseDes() {
		return CaseDes;
	}
	public void setCaseDes(String caseDes) {
		CaseDes = caseDes;
	}
	public String getCaseReady() {
		return CaseReady;
	}
	public void setCaseReady(String caseReady) {
		CaseReady = caseReady;
	}
	public String getCasestep() {
		return Casestep;
	}
	public void setCasestep(String casestep) {
		Casestep = casestep;
	}
	public String getCaseResout() {
		return CaseResout;
	}
	public void setCaseResout(String caseResout) {
		CaseResout = caseResout;
	}
	String CaseReady;
	String Casestep;
	String CaseResout;

	
}
