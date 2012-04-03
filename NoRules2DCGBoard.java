/**
 * Board that places no restrictions on moves that can be made to be used
 * as the basis for other game boards.
 */
public class NoRules2DCGBoard implements 2DCGBoard {
    public 2DCGSquare doMove(2DCGMove m) {
        return Simple2DCGSquare(m.getStartCoords().add(m.getDistance()));
    }
}
