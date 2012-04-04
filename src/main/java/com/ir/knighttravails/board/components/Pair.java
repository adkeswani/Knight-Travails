package com.ir.knighttravails.board.components;

/**
 * Stores a pair of x and y integer values for quantities such as co-ordinates,
 * sizes and distances on Board. 
 */
public interface Pair {
    /**
     * @return  the x value from the pair
     */
    public int getX();

    /**
     * @return  the y value from the pair
     */
    public int getY();

    /**
     * @param   other the pair to add to this pair
     * @return  a pair with the given pair's x and y values added onto this one's
     */
    public Pair add(Pair other);
}
