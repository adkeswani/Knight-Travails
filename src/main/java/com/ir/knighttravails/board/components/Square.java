package com.ir.knighttravails.board.components;

/**
 * Represents squares on Boards. For boards where there is a starting or 
 * lowest square, the convention will be to use the co-ordinate (0,0) to 
 * represent it.
 */
public interface Square {
    /**
     * @return  co-ordinates of the square
     */
    public Pair getCoords();

    /**
     * Returns the Manhattan distance from this square to another.
     * The components of the returned pair will always be positive.
     * 
     * @param   other the square to calculate the distance to
     * @return  the x and y Manhattan distances to the other square
     */
    public Pair distanceTo(Square other);
}
