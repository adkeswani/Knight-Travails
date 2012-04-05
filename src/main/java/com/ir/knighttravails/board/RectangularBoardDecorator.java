package com.ir.knighttravails.board;
import com.ir.knighttravails.board.components.Pair;
import com.ir.knighttravails.board.components.Square;
import com.ir.knighttravails.board.components.Move;

/**
 * Restricts moves to starting and ending within a rectangular board.
 * This board considers moves starting or ending on a negative square
 * to be invalid.
 *
 * @see #onBoard
 */
public class RectangularBoardDecorator extends BoardDecorator {
    private final Pair size;

    /**
     * Constructor that sets the width and height of the board
     *
     * @param   size the new size of the board, must have x and y values greater 
     *          than or equal to 1
     */
    public RectangularBoardDecorator(Board decoratedBoard, Pair size) {
        super(decoratedBoard);

        if (size.getX() < 1 || size.getY() < 1) {
            throw new BoardException("Size must be greater than 0: width: " + size.getX() + ", height: " + size.getY());
        }

        this.size = size;
    }

    @Override
    public Square doMove(Move m) {
        Square end = null;

        if (onBoard(m.getStart().getCoords()) && onBoard(m.getStart().getCoords().add(m.getDistance()))) {
            end = super.doMove(m);
        }

        return end;
    }

    /**
     * @return  the current size of the board
     */
    public Pair getSize() {
        return size;
    }

    /**
     * Checks that the given co-ordinates are within the board rectangle.
     * Note that the board's x co-ordinates range from 0 to (size.getX() - 1) inclusive
     * and the y co-ordinates range from from 0 to (size.getY() - 1) inclusive
     *
     * @param   coords the co-ordinates to check
     * @return  whether or not the given coordinates are within the board rectangle
     */
    private boolean onBoard(Pair coords) {
        return (coords.getX() >= 0 && coords.getX() < size.getX()) 
            && (coords.getY() >= 0 && coords.getY() < size.getY());
    }
}
