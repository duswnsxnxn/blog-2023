package innerExam.Q1;

public class forLoop {
	public static void main(String[] args) {
		int sum=0;
		int count=0;
		for (int i=1;i<=100;i++) {
			if(i%7==0) {
				count++;
				sum+=i;
			}
		}
		System.out.println("7의 배수의 개수 : "+count);
		System.out.println("7의 배수의 합 : "+sum);
	}
}
