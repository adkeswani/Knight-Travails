package com.ir.knighttravails.board.components;
import com.ir.knighttravails.board.Board;
import java.util.HashSet;
import java.util.Set;

/**
 * A piece that moves like a chess knight
 */

public class KnightPiece extends SimplePiece {
    public KnightPiece(Square current) {
        super(current);
    }

    @Override
    protected Set<Pair> getMoveDistances() {
        Set<Pair> moveDistances = new HashSet<Pair>();

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
