package com.ir.knighttravails.board.components;
import com.ir.knighttravails.board.BoardException;

/**
 * Allows squares to be created using and displayed in algebraic notation.
 * Generalises the standard chess algebraic notation by allowing characters
 * to go up to Z and 9 for the x and y values, and then allows characters to
 * be repeated for higher values.
 * <p>
 * For example, square ZF56 is (26 * 26 + 6)th square in the x direction and
 * the 56th square in the Y direction.
 * <p>
 * This square does not support negative co-ordinates.
 *
 * @see <a href="http://en.wikipedia.org/wiki/Algebraic_notation_(chess)">Algebraic Notation on Wikipedia</a>
 */
public class AlgebraicNotationSquare extends SimpleSquare {
    private static final int NUM_LETTERS_IN_ALPHABET = 26;

    /**
     * Constructs a square at the given co-ordinates after ensuring that
     * they are not negative
     *
     * @param   coords co-ordinates of the square to be created
     */
    public AlgebraicNotationSquare(Pair coords) {
        super(coords);
        if (this.coords.getX() < 0 || this.coords.getY() < 0) {
            throw new BoardException("Does not support negative co-ordinates: X: " + this.coords.getX() + ", Y: " + this.coords.getY());
        }
    }

    @Override
    public String toString() {
        //Convert x co-ordinate to algebraic notation
        StringBuilder x = new StringBuilder();
        int quotient = coords.getX() + 1;
        while (quotient > NUM_LETTERS_IN_ALPHABET) {
            int remainder = quotient % NUM_LETTERS_IN_ALPHABET;
            x.insert(0, (char)(remainder + 'A' - 1));
            quotient /= NUM_LETTERS_IN_ALPHABET;
        }
        x.insert(0, (char)(quotient + 'A' - 1));

        //Convert y co-ordinate to algebraic notation
        String y = Integer.toString(coords.getY() + 1);

        return x.toString().concat(y);
    }

    /**
     * Converts an id in algebraic notation to co-ordinates
     * 
     * @param   id the id of the square, case is ignored
     * @return  the coords with the given id or null if the id is invalid
     */
    public static Pair idToCoords (String id) {
        //Ensure id matches algebraic notation format
        id = id.toUpperCase();
        if (!id.matches("[A-Z]+[1-9]+")) {
            return null;
        }

        //Get x component and convert to integer
        byte[] xChars = id.replaceAll("[1-9]", "").getBytes();
        int x = 0;
        int multiplier = 1;
        for (int i = xChars.length - 1; i >= 0; i--) {
            x += (xChars[i] - 'A' + 1) * multiplier;
            multiplier *= NUM_LETTERS_IN_ALPHABET;
        }
        x -= 1; 

        //Get y component and convert to integer
        int y = Integer.parseInt(id.replaceAll("[A-Z]", "")) - 1;
        
        return new SimplePair(x, y);
    }


}
