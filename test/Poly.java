interface Iface <T> {
    public int toInt();
}

public class Poly<T extends Iface<T>> {
    private T t;
    public Poly(T v) {
	this.t = v;
    }
}
