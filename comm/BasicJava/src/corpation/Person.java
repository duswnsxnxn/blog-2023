package corpation;

public class Person {
	int money;
	String name;
	
	
	public Person(int money, String name) {
		this.money = money;
		this.name = name;
	}
	
	public void buy(Coffee menu) {
		money-=menu.getPrice();
	}
	
	public void show() {
		System.out.println(name+"ÀÇ ÀÜ¾×Àº : "+ money);
	}
}
