package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.components.Square;
import java.util.List;

/**
 * Node used by PathFinder that allows the path up to this point in the search
 * to be reconstructed.
 */
public interface FinderNode {
    /**
     * @return  the square that this node represents in the search
     */
    public Square getSquare();

    /**
     * Returns the path of squares up to this point in the search,
     * including the start square and this node's square
     *
     * @return  the path of squares up to this point in the search
     */
    public List<Square> getPathSquares();
}
