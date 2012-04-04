package com.ir.knighttravails.board.components;

/**
 * Represents squares on Boards. For boards where there is a starting or 
 * lowest square, the convention will be to use the co-ordinate (0,0) to 
 * represent it.
 */
public interface Square {
    /**
     * @return co-ordinates of the square
     */
    public Pair getCoords();

    /**
     * TODO
     */
    //public Pair getDistance(Square other);
}
