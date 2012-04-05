package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.components.Square;

/**
 * An implementation of FinderNode designed for A* search if used with a PriorityQueue.
 * Implementors are expected to calculate the distance to destination using an
 * admissible heuristic.
 */
public abstract class AStarFinderNode extends SimpleFinderNode implements Comparable<AStarFinderNode> {
    private int movesFromStart;
    protected int movesToDestination;

    public AStarFinderNode(Square current, AStarFinderNode prev) {
        super(current, prev);

        if (prev == null) {
            movesFromStart = 0;
        } else {
            movesFromStart = prev.movesFromStart + 1;
        }
    }

    @Override
    public int compareTo(AStarFinderNode o) {
        return (movesFromStart + movesToDestination) - (o.movesFromStart + o.movesToDestination);
    }
}
