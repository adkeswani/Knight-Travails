package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.components.Square;
import java.util.List;
import java.util.LinkedList;
import java.util.Iterator;

public class SimplePath implements Path {
    private List<Square> squares;

    public SimplePath(List<Square> l) {
        squares = new LinkedList<Square>(l);
    }

    public Square getStart() {
        return squares.get(0);
    }

    public Square getDestination() {
        return squares.get(squares.size() - 1);
    }

    public Iterator<Square> iterator() {
        //TODO: This will fair for 0 length paths!!!
        return squares.listIterator(1);
    }
}
