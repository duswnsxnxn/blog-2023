package arrayList;

import java.util.ArrayList;

public class DogTest {

	public static void main(String[] args) {
		ArrayList<Dog> dog = new ArrayList<Dog>();
		dog.add(new Dog("강아지1", "시바1"));
		dog.add(new Dog("강아지2", "시바2"));
		dog.add(new Dog("강아지3", "시바3"));
		dog.add(new Dog("강아지4", "시바4"));
		dog.add(new Dog("강아지5", "시바5"));
		
		for(int i=0;i<dog.size();i++) {
			Dog output =dog.get(i);
			System.out.println(output.show());
		}
	}
}
