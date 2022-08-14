package corpation;

public class CoffeeTest {

	public static void main(String[] args) {
		Person kim = new Person(20000, "±Ëø¨¡ÿ");
		Person lee = new Person(50000, "¿Ãº∫∫Û");
		Coffee star = new Coffee("latte", 4000);
		Coffee ediya = new Coffee("æ∆¿ÃΩ∫", 3000);
		kim.buy(star);
		kim.show();
		lee.buy(ediya);
		lee.show();
		
	}
}
