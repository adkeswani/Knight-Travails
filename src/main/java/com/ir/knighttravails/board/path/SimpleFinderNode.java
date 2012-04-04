package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.components.Square;
import java.util.List;
import java.util.LinkedList;
import java.util.Collections;

public class SimpleFinderNode implements FinderNode {
    private Square s;
    private SimpleFinderNode prev;

    public SimpleFinderNode(Square s, SimpleFinderNode prev) {
        this.s = s;
        this.prev = prev;
    }

    public Square getSquare() {
        return this.s;
    }

    public List<Square> getPathSquares() {
        List<Square> path = new LinkedList<Square>();
        path.add(s);
        SimpleFinderNode curr = prev;
        while (curr != null) {
            path.add(curr.getSquare());
            curr = curr.prev;
        }

        Collections.reverse(path);
        return path;
    }
}
