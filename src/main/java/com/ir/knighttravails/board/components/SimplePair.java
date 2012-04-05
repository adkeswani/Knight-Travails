package com.ir.knighttravails.board.components;
import org.apache.commons.lang.builder.HashCodeBuilder;

/**
 * A default implementation of Pair.
 */
public class SimplePair implements Pair {
    private final int x, y;

    public SimplePair(int x, int y) {
        this.x = x;
        this.y = y;
    }

    @Override
    public int getX() {
        return x;
    }

    @Override
    public int getY() {
        return y;
    }

    @Override
    public Pair add(Pair other) {
        return new SimplePair(x + other.getX(), y + other.getY());
    }

    @Override
    public Pair subtract(Pair other) {
        return new SimplePair(x - other.getX(), y - other.getY());
    }

    /**
     * An object is considered equal to a SimplePair if it has the same reference or
     * if it is an instance of SimplePair or one of its subclasses and has the same
     * x and y coordinates
     *
     * @param   obj the object to check equality against
     * @return  true if the given object is equal to this pair
     */
    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }

        if (!(obj instanceof SimplePair)) {
            return false;
        }

        SimplePair p = (SimplePair)obj;
        return (p.getX() == x && p.getY() == y);
    }

    /**
     * Creates a hash code based upon the x and y coordinates of the pair, since
     * these are used to determine equality
     *
     * @return hash value for this instance
     */
    @Override
    public final int hashCode() {
        return new HashCodeBuilder(13, 37).append(x).append(y).toHashCode();
    }
}
