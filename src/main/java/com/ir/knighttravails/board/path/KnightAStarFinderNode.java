package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.components.Square;
import com.ir.knighttravails.board.components.Pair;

/**
 * Implementation of AStarFinder for pieces that move like a knight in chess.
 * Note that this will only generate an optimal path for pieces that move
 * like a knight.
 * <p>
 * The heuristic takes the maximum of the X and Y components of the distance
 * to the destination and divides it by the maximum distance a knight can travel
 * in the X or Y direction per move. Thus, it is admissible, because the knight
 * cannot get to that destination in any fewer moves than this.
 */
public class KnightAStarFinderNode extends AStarFinderNode {
    //Maximum distance a knight can travel in the X or Y direction per move
    public static final int MAX_XY_MOVE_DISTANCE = 2;

    public KnightAStarFinderNode(Square current, Square destination, AStarFinderNode prev) {
        super(current, prev);

        Pair distance = current.distanceTo(destination);
        //Round up result of division
        movesToDestination = (int)Math.ceil((double)Math.max(distance.getX(), distance.getY()) / MAX_XY_MOVE_DISTANCE);
    }
}
