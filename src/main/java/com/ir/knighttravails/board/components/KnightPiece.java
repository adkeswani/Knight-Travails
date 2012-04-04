package com.ir.knighttravails.board.components;
import com.ir.knighttravails.board.Board;
import java.util.ArrayList;
import java.util.Collection;

/**
 * A piece that moves like a chess knight
 */

public class KnightPiece extends SimplePiece {
    public KnightPiece(Square current) {
        super(current);
    }

    @Override
    protected Collection<Pair> getMoveDistances() {
        Collection<Pair> moveDistances = new ArrayList<Pair>();

        moveDistances.add(new SimplePair(-2, -1));
        moveDistances.add(new SimplePair(-2, 1));
        moveDistances.add(new SimplePair(-1, -2));
        moveDistances.add(new SimplePair(-1, 2));
        moveDistances.add(new SimplePair(1, -2));
        moveDistances.add(new SimplePair(1, 2));
        moveDistances.add(new SimplePair(2, -1));
        moveDistances.add(new SimplePair(2, 1));

        return moveDistances;
    }
}
