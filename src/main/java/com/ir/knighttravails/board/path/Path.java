package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.components.Square;
import java.util.Iterator;

/**
 * Path between two squares on a board
 */
public interface Path extends Iterable<Square> {
    /**
     * @return  the starting square of the path
     */
    public Square getStart();

    /**
     * @return  the destination square of the path
     */
    public Square getDestination();

    /**
     * @return  an iterator over the squares in the path from start to end inclusive
     */
    public Iterator<Square> iterator();
}
