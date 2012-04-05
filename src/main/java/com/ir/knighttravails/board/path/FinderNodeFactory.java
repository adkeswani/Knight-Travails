package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.components.Square;

/**
 * Factory to construct FinderNodes. Allows PathFinder to create FinderNodes
 * without having to know their specific type.
 */
public interface FinderNodeFactory<T extends FinderNode> {
    /**
     * @param   current the square that the search is currently looking at
     * @param   destination the square the path finder is trying to reach
     * @param   prevNode the parent node that is adding this node to the search
     * @return  An instance of this factory's type of FinderNode
     */
    public T make(Square current, Square destination, T prevNode);
}
