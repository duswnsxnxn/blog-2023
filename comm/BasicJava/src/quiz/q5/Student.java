package quiz.q5;

public class Student {

	private String name;
	private String major;
	private String ID;
	private double avg;
	public Student(String name, String major, String iD, double avg) {
		super();
		this.name = name;
		this.major = major;
		ID = iD;
		this.avg = avg;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public double getAvg() {
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	
	
}
