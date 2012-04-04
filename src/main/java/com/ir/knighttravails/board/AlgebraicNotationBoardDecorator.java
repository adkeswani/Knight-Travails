package com.ir.knighttravails.board;
import com.ir.knighttravails.board.components.*;

/**
 * Changes the returned type of doMove to AlgebraicNotationSquare. This board 
 * does not support squares with negative co-ordinates, and so should decorate
 * a board that enforces this, such as RectangularBoardDecorator.
 *
 * @see #AlgebraicNotationSquare
 *
 */
public class AlgebraicNotationBoardDecorator extends BoardDecorator {
    public AlgebraicNotationBoardDecorator(Board decoratedBoard) {
        super(decoratedBoard);
    }

    public Square doMove(Move m) {
        Square end = super.doMove(m);

        if (end != null) {
            return new AlgebraicNotationSquare(end.getCoords());
        } else {
            return end;
        }
    }
}
