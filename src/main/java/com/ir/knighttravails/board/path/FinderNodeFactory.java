package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.components.Square;

public interface FinderNodeFactory<T> {
    public T make(Square s, T prevNode);
}
