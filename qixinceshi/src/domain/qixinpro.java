package domain;

public class qixinpro {
	@Override
	public String toString() {
		return "qixinpro [idqixinpro=" + idqixinpro + ", proname=" + proname
				+ ", prohead=" + prohead + ", promotto=" + promotto + "]";
	}
	public int getIdqixinpro() {
		return idqixinpro;
	}
	public void setIdqixinpro(int idqixinpro) {
		this.idqixinpro = idqixinpro;
	}
	public String getProname() {
		return proname;
	}
	public void setProname(String proname) {
		this.proname = proname;
	}
	public String getProhead() {
		return prohead;
	}
	public void setProhead(String prohead) {
		this.prohead = prohead;
	}
	public String getPromotto() {
		return promotto;
	}
	public void setPromotto(String promotto) {
		this.promotto = promotto;
	}
	int idqixinpro;
	String proname;
	String prohead;
	String promotto;
}
