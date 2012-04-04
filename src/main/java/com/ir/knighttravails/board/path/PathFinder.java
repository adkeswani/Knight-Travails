package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.components.*;
import com.ir.knighttravails.board.Board;

public interface PathFinder {
    public Path findPath(Board b, Piece p, Square destination);
}
