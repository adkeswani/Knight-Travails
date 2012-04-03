/**
 * Changes the return type of doMove to AlgebraicNotation2DCGPair, adds no new rules.
 * @see #AlgebraicNotation2DCGPair
 */
public class AlgebraicNotation2DCGBoardDecorator() extends 2DCGBoardDecorator {
    public 2DCGSquare doMove(2DCGMove m) {
        2DCGSquare end = super.doMove(m);
        return new AlgebraicNotation2DCGSquare(endCoords.getX(), endCoords.getY());
    }
}
