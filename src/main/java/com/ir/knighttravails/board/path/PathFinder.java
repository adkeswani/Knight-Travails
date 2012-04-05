package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.components.Piece;
import com.ir.knighttravails.board.components.Square;
import com.ir.knighttravails.board.Board;

/**
 * Finds paths between squares on a game board.
 */
public interface PathFinder {
    /**
     * Finds the path for a piece to get to a destination square on the given board.
     *
     * @param   b the board that the piece will be moving on, defines movement rules
     * @param   p the piece being moved, defines starting square and moves that can be made
     * @param   destination the square the path should end at
     * @return  a path between the piece's starting position and the destination square,
                returns null if no path found
     */
    public Path findPath(Board b, Piece p, Square destination);
}
