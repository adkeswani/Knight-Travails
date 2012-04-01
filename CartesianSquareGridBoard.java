/**
 * Represents a typical boardgame board, a grid of squares, and references the squares using cartesian coordinates
 */
public class CSGBoard {

    //Is the Immutable actually necessary? Should I instead just copy it into a new Pair?

    private final ImmutablePair<Integer, Integer> size;
    private final ImmutablePair<Integer, Integer> originDisplacement;

    public CSGBoard(ImmutablePair<Integer, Integer> size, ImmutablePair<Integer, Integer> originDisplacement) {


    }

    public boolean onBoard(Pair<Integer, Integer> coord) {
        //May need to account for origin displacement here lah
        return (coord.l < size.l) || (coord.r < size.r);
    }

    public CSGSquare createSquare(Pair<Integer, Integer> coord) {
        CSGSquare s;

        if onBoard(coord) {
            s = new CSGSquare(coord);
        }

        return s;
    }

    public CSGSquare doMove(CSGMove m) {
        //This probably doesn't work, maybe I'll make a util called Coord or something...
        //Probably unnecessary though
        return createSquare(m.start.getCoord() + m.movement);
    }
}
