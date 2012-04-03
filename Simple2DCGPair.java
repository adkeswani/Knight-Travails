/**
 * A default implementation of 2DCGPair.
 */
public class Simple2DCGPair implements 2DCGPair {
    private final int x, y;

    public Simple2DCGPair(int x, int y) {
        this.x = x;
        this.y = y;
    }

    public int getXValue() {
        return x;
    }

    public int getYValue() {
        return y;
    }

    public 2DCGPair add(2DCGPair other) {
        //TODO This could overflow?
        return new Simple2DCGPair(x + other.getXValue(), y + other.getYValue());
    }
}
