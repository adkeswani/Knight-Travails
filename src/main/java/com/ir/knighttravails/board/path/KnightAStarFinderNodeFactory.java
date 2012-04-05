package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.components.Square;

/**
 * An implementation of FinderNodeFactory that creates KnightAStarFinderNodes
 */
public class KnightAStarFinderNodeFactory implements FinderNodeFactory<KnightAStarFinderNode> {
    public KnightAStarFinderNode make(Square current, Square destination, KnightAStarFinderNode prev) {
        return new KnightAStarFinderNode(current, destination, prev);
    }
}
