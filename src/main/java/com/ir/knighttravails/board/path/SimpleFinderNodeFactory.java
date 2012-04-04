package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.components.Square;

public class SimpleFinderNodeFactory implements FinderNodeFactory<SimpleFinderNode> {
    public SimpleFinderNode make(Square s, SimpleFinderNode prev) {
        return new SimpleFinderNode(s, prev);
    }
}
