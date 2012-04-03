/**
 * Stores a pair of x and y integer values for quantities such as co-ordinates,
 * sizes and distances on 2DCGBoard. For boards where there is a starting or 
 * lowest square, the convention will be to use the co-ordinate (0,0) to 
 * represent it.
 */
public interface 2DCGPair {
    /**
     * Returns the x value from the pair
     * 
     * @return  the x value from the pair
     */
    public int getXValue();

    /**
     * Returns the y value from the pair
     * 
     * @return  the y value from the pair
     */
    public int getYValue();

    /**
     * Returns a new pair with the given pair's x and y values added onto this one's
     * 
     * @param   other the pair to add to this pair
     * @return  a pair with the given pair's x and y values added onto this one's
     */
    public 2DCGPair add(2DCGPair other);
}
