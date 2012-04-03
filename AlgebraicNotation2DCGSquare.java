/**
 * Allows squares to be created using and displayed in algebraic notation.
 * Generalises the standard chess algebraic notation by allowing characters
 * to go up to Z and 9 for the x and y values, and then allows characters to
 * be repeated for higher values.
 * <p>
 * For example, square ZF56 is (26 * 26 + 6)th square in the x direction and
 * the 56th square in the Y direction
 * <p>
 * This square does not support negative co-ordinates.
 *
 * @see <a href="http://en.wikipedia.org/wiki/Algebraic_notation_(chess)">Algebraic Notation on Wikipedia</a>
 */
public AlgebraicNotation2DCGSquare extends Simple2DCGSquare {
    public AlgebraicNotation2DCGSquare(2DCGPair coords) throws dsjkhf {
        if (coords.getX() < 0 || coords.getY() < 0) {
            throw new UnsupportedType
        }
        super(coords);
    }

    /**
     * Constructs a pair from an ID in algebraic notation
     * 
     * @param   id the id of the pair, case does not matter
     */
    public AlgebraicNotation2DCGSquare(String id) {
        id = id.toUpperCase();

        if (!id.matches("[A-Z]+[1-9]+") {
            throw new IllegalArgumentException("Expected string in algebraic notation but received" + id);
        }

        byte[] xChars = id.replaceAll("[1-9]", "").getBytes();
        int xVal = 0;
        for (i = 0; i < xChars.length; i++) {
            xVal += xChars.charAt(i) - 'A';
        }

        int yVal = Integer.parseInt(id.replaceAll("[A-Z]", "")) - 1;

        this(x, y);
    }

    @Override
    public String toString() {
        
        String 
    }
}
