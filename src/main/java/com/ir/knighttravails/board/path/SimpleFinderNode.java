package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.components.Square;
import java.util.List;
import java.util.LinkedList;
import java.util.Collections;

/**
 * A default implementation of FinderNode
 */
public class SimpleFinderNode implements FinderNode {
    private Square current;
    private SimpleFinderNode prev;

    public SimpleFinderNode(Square current, SimpleFinderNode prev) {
        this.current = current;
        this.prev = prev;
    }

    @Override
    public Square getSquare() {
        return this.current;
    }

    @Override
    public List<Square> getPathSquares() {
        List<Square> path = new LinkedList<Square>();
        path.add(current);

        //Follow the chain of prev nodes to get their squares
        SimpleFinderNode curr = prev;
        while (curr != null) {
            path.add(curr.getSquare());
            curr = curr.prev;
        }

        //Squares have been added from end to start, so must reverse
        Collections.reverse(path);

        return path;
    }
}
