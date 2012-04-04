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

    /**
     * TODO
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

    @Override
    public final int hashCode() {
        return new HashCodeBuilder(83, 57).append(coords.hashCode()).toHashCode();
    }
}
