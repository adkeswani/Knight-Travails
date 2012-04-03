/**
 * Restricts moves to starting and ending within a rectangular board.
 * @see #onBoard
 */
public class Rectangular2DCGBoardDecorator extends 2DCGBoardDecorator {
    private 2DCGPair size = new Simple2DCGPair(0, 0);

    @Override
    public 2DCGSquare doMove(2DCGMove m) {
        2DCGSquare end;

        if (onBoard(m.getStart().getCoords().add(m.getDistance()))) {
            end = super.doMove(m);
        }

        return end;
    }

    /**
     * Sets the width and height of the board
     *
     * @param   size the new size of the board where the x value is the width
     *          and the y value is the height
     */
    public void setSize(2DCGPair size) {
        this.size = size;
    }

    /**
     * @return  the current size of the board
     */
    public 2DCGPair getSize() {
        return size;
    }

    /**
     * Checks that the given co-ordinates are within the board rectangle.
     * Note that the rectangle's x co-ordinates range from 0 to (size.getX() - 1) inclusive
     * and the y co-ordinates range from from 0 to (size.getY() - 1) inclusive
     *
     * @param   coords the co-ordinates to check
     * @return  whether or not the given coordinates are within the board rectangle
     */
    private boolean onBoard(2DCGPair coords) {
        return (coords.getX() < size.getX()) 
            || (coords.getY() < size.getY());
    }
}
