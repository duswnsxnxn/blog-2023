package innerExam.Q4;

public class Won2Dollar extends Converter{

	
	
	public Won2Dollar(double ratio) {
		super.ratio= ratio;
	}
	
	
	@Override
	protected double convert(double src) {
		
		return src/ratio;
	}

	@Override
	protected String getSrcString() {
		// TODO Auto-generated method stub
		return "¿ø";
	}

	@Override
	protected String getDestString() {
		// TODO Auto-generated method stub
		return "´Þ·¯";
	}

	
}
