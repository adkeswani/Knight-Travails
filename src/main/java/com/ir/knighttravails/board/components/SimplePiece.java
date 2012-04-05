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

    @Override
    public Square getCurrent() {
        return current;
    }

    @Override
    public void setCurrent(Square current) {
        this.current = current;
    }

    @Override
    public Set<Square> validDestinations(Board b) {
        Set<Square> destinations = new HashSet<Square>();

        //Try moving each of the possible distances to determine valid destinations
        for (Pair distance : getMoveDistanceSet()) {
            Square s = b.doMove(new SimpleMove(current, distance));
            if (s != null) {
                destinations.add(s);
            }
        }

        return destinations;
    }

    /**
     * @return  set of distances that this piece can move from its current square
     */
    protected abstract Set<Pair> getMoveDistanceSet();
}
