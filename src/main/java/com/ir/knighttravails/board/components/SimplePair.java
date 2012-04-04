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

    /**
     * TODO
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

    @Override
    public final int hashCode() {
        return new HashCodeBuilder(13, 37).append(x).append(y).toHashCode();
    }
}
