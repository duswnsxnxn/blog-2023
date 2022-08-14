package innerExam.Q2;

import java.util.Scanner;

public class GuGudan {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("출력할 구구단 정수를 입력하시오>>");
		int dan = sc.nextInt();
		int i = 1;
		while(i<=9) {
			System.out.println(dan+" * "+i+" = "+dan*i);
			i++;
		}
	}
}
