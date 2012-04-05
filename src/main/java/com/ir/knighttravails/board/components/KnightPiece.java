package com.ir.knighttravails.board.components;
import com.ir.knighttravails.board.Board;
import java.util.Collections;
import java.util.Set;
import java.util.HashSet;

/**
 * A piece that moves like a chess knight
 */
public class KnightPiece extends SimplePiece {
    private static final Set<Pair> moveDistances;
    static {
        Set<Pair> mds = new HashSet<Pair>();
        mds.add(new SimplePair(-2, -1));
        mds.add(new SimplePair(-2, 1));
        mds.add(new SimplePair(-1, -2));
        mds.add(new SimplePair(-1, 2));
        mds.add(new SimplePair(1, -2));
        mds.add(new SimplePair(1, 2));
        mds.add(new SimplePair(2, -1));
        mds.add(new SimplePair(2, 1));
        moveDistances = Collections.unmodifiableSet(mds);
    }

    public KnightPiece(Square current) {
        super(current);
    }

    @Override
    protected Set<Pair> getMoveDistanceSet() {
        return moveDistances;
    }
}
