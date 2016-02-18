import java.util.HashMap;
import java.util.Map;

public class HashCollision {
	public static void main(String[] args) {

		Map<MyInnerClass, String> myMap = new HashMap<MyInnerClass, String>();
		myMap.put(new MyInnerClass("AB", "CD"), "First");

		// Same hashCode same equals
		myMap.put(new MyInnerClass("AB", "CD"), "First");

		// Same hashCode different equals
		myMap.put(new MyInnerClass("ABC", "D"), "Second");

		System.out.println(myMap);
	}

}
