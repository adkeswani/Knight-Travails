/**
 * Stores a move that can be made on a 2DCGBoard.
 */
public interface 2DCGMove {
    /**
     * @return starting square for the move
     */
    public 2DCGSquare getStart();

    /**
     * @return distance to be moved
     */
    public 2DCGPair getDistance();
}
