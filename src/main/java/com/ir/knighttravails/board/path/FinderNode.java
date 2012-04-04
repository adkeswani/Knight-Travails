package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.components.Square;
import java.util.List;

public interface FinderNode {
    public Square getSquare();

    public List<Square> getPathSquares();
}
