package com.ir.knighttravails.board.components;

/**
 * A default implementation of Move
 */
public class SimpleMove implements Move {
    Square start;
    Pair distance;

    public SimpleMove(Square start, Pair distance) {
        this.start = start;
        this.distance = distance;
    }

    public Square getStart() {
        return start;
    }

    public Pair getDistance() {
        return distance;
    }
}
