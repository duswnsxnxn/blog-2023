package quiz.q5;

public class Main {

	public static void main(String[] args) {
		Input input=new Input();
		Output output = new Output();
		System.out.println("학생 이름,학과,학번,학점평균을 입력하세요.");
		input.input();
		output.output(input);
	}
}
