package quiz.q5;

import java.util.ArrayList;
import java.util.Scanner;

public class Input {
	ArrayList<Student> arr;
	Scanner sc;
	public Input() {
		
	}
	
	public ArrayList<Student> input(){
		arr=new ArrayList<Student>();
		 sc=new Scanner(System.in);
		 for(int i=0;i<4;i++) {
			 System.out.print(">> ");
			 String name=sc.next();
			 String major=sc.next();
			 String ID=sc.next();
			 double avg=sc.nextInt();
			 arr.add(new Student(name, major, ID, avg));
		 }
		 return arr;
	}
	 
}
