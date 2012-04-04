package com.ir.knighttravails.board.components;

/**
 * Stores a move that can be made on a Board.
 */
public interface Move {
    /**
     * @return starting square for the move
     */
    public Square getStart();

    /**
     * @return distance to be moved
     */
    public Pair getDistance();
}
