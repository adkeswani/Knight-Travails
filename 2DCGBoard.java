/**
 * Models 2 dimensional Cartesian grid (2DCG) game boards. These are made up of
 * a grid of squares and use Cartesian coordinates to refer to positions,
 * distances and sizes.
 */
public interface 2DCGBoard {
    /**
     * Carries out the given move after checking that it would be valid.
     *
     * @param   m the move to be made
     * @return  the square landed on after the move has been made or null if 
     *          the move is invalid
     */
    public 2DCGSquare doMove(2DCGMove m);
}
