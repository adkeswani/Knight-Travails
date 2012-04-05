package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.components.Square;

/**
 * An implementation of FinderNodeFactory that creates SimpleFinderNodes
 */
public class SimpleFinderNodeFactory implements FinderNodeFactory<SimpleFinderNode> {
    public SimpleFinderNode make(Square current, Square destination, SimpleFinderNode prev) {
        return new SimpleFinderNode(current, prev);
    }
}
