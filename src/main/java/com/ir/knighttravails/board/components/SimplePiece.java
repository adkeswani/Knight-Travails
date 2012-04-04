package com.ir.knighttravails.board.components;
import com.ir.knighttravails.board.Board;
import java.util.HashSet;
import java.util.Set;

/**
 * A default implementation of Piece
 */
public abstract class SimplePiece implements Piece {
    protected Square current;

    public SimplePiece(Square current) {
        this.current = current;
    }

    public Square getCurrent() {
        return current;
    }

    public void setCurrent(Square current) {
        this.current = current;
    }

    public Set<Square> validDestinations(Board b) {
        Set<Square> destinations = new HashSet<Square>();

        //Try moving each of the possible distances to determine valid destinations
        for (Pair distance : getMoveDistances()) {
            Square s = b.doMove(new SimpleMove(current, distance));
            if (s != null) {
                destinations.add(s);
            }
        }

        return destinations;
    }

    /**
     * @return all of the distances that this piece can move from its current square
     */
    protected abstract Set<Pair> getMoveDistances();
}
