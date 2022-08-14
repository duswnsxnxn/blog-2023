package innerExam.Q3;

import java.util.Scanner;

public class Min {
	public static void main(String[] args) {
		double[] arr = new double[5];
		
		Scanner sc = new Scanner(System.in);
		for (int i = 1; i <= 5; i++) {
			System.out.print(i + "번째 수 입력 : ");
			arr[i-1] = sc.nextDouble();
		}
		double min=arr[0];
		sc.close();
		for (int i = 0; i < 5; i++) {
			if (arr[0] > arr[i]) {
				min=arr[i];
			}
		}
		System.out.println("최소값 : "+min);
	}
}
