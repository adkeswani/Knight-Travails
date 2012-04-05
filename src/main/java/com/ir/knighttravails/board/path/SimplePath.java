package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.components.Square;
import com.ir.knighttravails.board.BoardException;
import java.util.List;
import java.util.LinkedList;
import java.util.Iterator;

/**
 * A default implementation of Path
 */
public class SimplePath implements Path {
    private List<Square> squares;

    /**
     * Constructs a path consisting of the given list of squares
     *
     * @param l the squares on the path in order from start to destination inclusive
     */
    public SimplePath(List<Square> l) {
        if (l.isEmpty()) {
            throw new BoardException("Path must have at least one square");
        }
        squares = new LinkedList<Square>(l);
    }

    public Square getStart() {
        return squares.get(0);
    }

    public Square getDestination() {
        return squares.get(squares.size() - 1);
    }

    public Iterator<Square> iterator() {
        return squares.iterator();
    }
}
