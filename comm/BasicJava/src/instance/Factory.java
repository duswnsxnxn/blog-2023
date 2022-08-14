package instance;

public class Factory {

	private static Factory instance=new Factory();
	
	private Factory() {
		
	}
	
	public static Factory getInstance() {
		if (instance==null) {
			Factory instance=new Factory();
		}
		return instance;
	}
	
	public Car car(int carNum,String model,String color) {
		Car work=new Car(carNum,model,color);
		return work;
	}
}
