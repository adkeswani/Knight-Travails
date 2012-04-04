package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.Board;
import com.ir.knighttravails.board.components.Square;
import com.ir.knighttravails.board.components.Piece;
import java.util.Queue;

public class SimplePathFinder<T extends FinderNode> implements PathFinder {
    private Queue<T> q;
    private FinderNodeFactory<T> nodeFactory;

    public SimplePathFinder(Queue<T> q, FinderNodeFactory<T> nodeFactory) {
        this.q = q;
        this.nodeFactory = nodeFactory;
    }

    public Path findPath(Board b, Piece p, Square start, Square destination) {
        q.clear();

        T node = nodeFactory.make(start, null);
        while (!(node.getSquare().equals(destination)) && node != null) {
            p.setCurrent(node.getSquare());
            for (Square s : p.validDestinations(b)) {
                q.add(nodeFactory.make(s, node));
            }
            node = q.poll();
        }

        if (node == null) {
            return null;
        } else {
            return new SimplePath(node.getPathSquares());
        }
    }
}
