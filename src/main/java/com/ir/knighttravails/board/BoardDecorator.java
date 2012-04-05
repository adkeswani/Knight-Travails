package com.ir.knighttravails.board;
import com.ir.knighttravails.board.components.Square;
import com.ir.knighttravails.board.components.Move;

/**
 * Enables game boards to be built up from multiple types of boards, each
 * implementing their own sets of rules.
 */
public abstract class BoardDecorator implements Board {
    protected final Board decoratedBoard;
    
    public BoardDecorator(Board decoratedBoard) {
        this.decoratedBoard = decoratedBoard;
    }

    @Override
    public Square doMove(Move m) {
        return decoratedBoard.doMove(m);
    }
}
