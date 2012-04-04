package com.ir.knighttravails.board.components;
import com.ir.knighttravails.board.Board;
import java.util.Collection;

/**
 * Represents a piece on a game board.
 */
public interface Piece {
    /**
     * @return  the current square the piece is on
     */
    public Square getCurrent();
    
    /**
     * @param   s the new position of the piece
     */
    public void setCurrent(Square s);

    /**
     * Determines the squares that this piece can reach from its current position
     * according to the rules of the given board
     *
     * @param   b the board whose rules to use
     * @return  the squares the piece can reach
     */
    public Collection<Square> validDestinations(Board b);
}
