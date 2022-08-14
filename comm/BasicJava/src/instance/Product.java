package instance;

public class Product {

	public static void main(String[] args) {
		Factory hyundaiFactory=Factory.getInstance();
		Factory kiaFactory=Factory.getInstance();
		
		Car hyundai = hyundaiFactory.car(1010,"흉기차" , "Red"); 
		Car kia = kiaFactory.car(1020,"ev5" , "Black");
		
		System.out.println("모델명 : "+ kia.model+ " 차량번호 : "+ kia.carNum+ " 차량색깔 : "+kia.color);
		System.out.println("모델명 : "+ hyundai.model+ " 차량번호 : "+ hyundai.carNum+ " 차량색깔 : "+hyundai.color);
	}
	
}
