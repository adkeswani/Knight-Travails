package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.Board;
import com.ir.knighttravails.board.components.Square;
import com.ir.knighttravails.board.components.Piece;
import java.util.Queue;
import java.util.Set;
import java.util.HashSet;

/**
 * Finds paths using a queue to determine the order in which the search occurs.
 * Different Queues and FinderNode implementations will affect this search order and 
 * can be used to implement different searches, e.g. BFS, DFS, A*
 */
public class QueueBasedPathFinder<T extends FinderNode> implements PathFinder {
    private Queue<T> q;
    private FinderNodeFactory<T> nodeFactory;

    /**
     * @param   q the queue to add and pull nodes from while finding the path
     * @param   nodeFactory a factory to produce the nodes used by the queue
     */
    public QueueBasedPathFinder(Queue<T> q, FinderNodeFactory<T> nodeFactory) {
        this.q = q;
        this.nodeFactory = nodeFactory;
    }

    public Path findPath(Board b, Piece p, Square destination) {
        Set<Square> visited = new HashSet<Square>();

        q.clear();

        //Pull nodes off the queue and add their children to it until
        //all squares are checked or destination found
        T node = nodeFactory.make(p.getCurrent(), destination, null);
        visited.add(p.getCurrent());
        while (!(node.getSquare().equals(destination)) && node != null) {
            p.setCurrent(node.getSquare());
            for (Square s : p.validDestinations(b)) {
                //Ensure that squares are not revisited
                if (!visited.contains(s)) {
                    q.add(nodeFactory.make(s, destination, node));
                    visited.add(s);
                }
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
