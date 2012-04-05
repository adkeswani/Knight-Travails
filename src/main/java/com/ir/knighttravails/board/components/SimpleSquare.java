package com.ir.knighttravails.board.components;
import org.apache.commons.lang.builder.HashCodeBuilder;

/**
* A default implementation of Square.
*/
public class SimpleSquare implements Square {
    protected final Pair coords;

    /**
     * Constructs a square with the given co-ordinates
     *
     * @param coords co-ordinates of the square to be created
     */
    public SimpleSquare(Pair coords) {
        this.coords = coords;
    }

    @Override
    public Pair getCoords() {
        return coords;
    }

    @Override
    public Pair distanceTo(Square other) {
        Pair p = coords.subtract(other.getCoords());
        return new SimplePair(Math.abs(p.getX()), Math.abs(p.getY()));
    }

    /**
     * An object is considered equal to a SimpleSquare if it has the same reference or
     * if it is an instance of SimpleSquare or one of its subclasses and has equal
     * coordinates
     *
     * @param   obj the object to check equality against
     * @return  true if the given object is equal to this pair
     */
    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }

        if (!(obj instanceof SimpleSquare)) {
            return false;
        }

        SimpleSquare s = (SimpleSquare)obj;
        return (s.coords.equals(coords));
    }

    /**
     * Creates a hash code based upon the coordinates of the square, since
     * these are used to determine equality
     *
     * @return hash value for this instance
     */
    @Override
    public final int hashCode() {
        return new HashCodeBuilder(83, 57).append(coords.hashCode()).toHashCode();
    }
}
