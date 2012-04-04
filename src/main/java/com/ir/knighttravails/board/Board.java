package com.ir.knighttravails.board;
import com.ir.knighttravails.board.components.*;

/**
 * Models a typical 2D game board consisting of a grid of squares.
 */
public interface Board {
    /**
     * Carries out the given move after checking that it would be valid.
     *
     * @param   m the move to be made
     * @return  the square landed on after the move has been made or null if 
     *          the move is invalid
     */
    public Square doMove(Move m);
}
