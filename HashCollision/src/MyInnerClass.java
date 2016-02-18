public class MyInnerClass {

	private String StrA;
	private String StrB;

	public MyInnerClass(String strA, String strB) {
		super();
		StrA = strA;
		StrB = strB;
	}

	@Override
	public int hashCode() {
		return (StrA + StrB).length();
	}

	@Override
	public boolean equals(Object obj) {
		if (StrB.length() == StrA.length()) {
			return true;
		}
		return false;
	}

}
