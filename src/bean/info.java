package bean;

public class info {

	private String residenceType;
	private String housingType;
	private String housingArea;
	private String numberOfrooms;
	private String nameOfhouseholder;
	private String idCard;
	private String sex;
	private String nation;
	private String education;
	
	public String getResidenceType() {
		return residenceType;
	}
	public void setResidenceType(String residenceType) {
		this.residenceType = residenceType;
	}
	public String getHousingType() {
		return housingType;
	}
	public void setHousingType(String housingType) {
		this.housingType = housingType;
	}
	public String getHousingArea() {
		return housingArea;
	}
	public void setHousingArea(String housingArea) {
		this.housingArea = housingArea;
	}
	public String getNumberOfrooms() {
		return numberOfrooms;
	}
	public void setNumberOfrooms(String numberOfrooms) {
		this.numberOfrooms = numberOfrooms;
	}
	public String getNameOfhouseholder() {
		return nameOfhouseholder;
	}
	public void setNameOfhouseholder(String nameOfhouseholder) {
		this.nameOfhouseholder = nameOfhouseholder;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public info(String residenceType,String housingType, String housingArea, String numberOfrooms, String nameOfhouseholder, String idCard,
			String sex, String nation, String education) {
		super();
		this.residenceType = residenceType;
		this.housingType = housingType;
		this.housingArea = housingArea;
		this.numberOfrooms = numberOfrooms;
		this.nameOfhouseholder = nameOfhouseholder;
		this.idCard = idCard;
		this.sex = sex;
		this.nation = nation;
		this.education = education;
	}
	public info() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "info [residenceType=" + residenceType + ", housingType=" + housingType + ", housingArea=" + housingArea
				+ ", numberOfrooms=" + numberOfrooms + ", nameOfhouseholder=" + nameOfhouseholder + ", idCard=" + idCard
				+ ", sex=" + sex + ", nation=" + nation + ", education=" + education + "]";
	}
	
	
}
