package quiz.q5;

import java.util.ArrayList;

public class Output {

	public Output() {
		// TODO Auto-generated constructor stub
	}
	public void output(Input input) {
		ArrayList<Student> arr= input.arr;
		 for(Student stu:arr) {
		System.out.println("--------------------");
		 System.out.println("이름: "+stu.getName());
		 System.out.println("S학과: "+stu.getMajor());
		 System.out.println("학번: "+stu.getID());
		 System.out.println("학점평균: "+stu.getAvg());
	}
	}
}
