package com.ir.knighttravails.board.components;
import com.ir.knighttravails.board.Board;
import java.util.ArrayList;
import java.util.Collection;

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

    public Collection<Square> validDestinations(Board b) {
        Collection<Square> destinations = new ArrayList<Square>();

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
    protected abstract Collection<Pair> getMoveDistances();
}
