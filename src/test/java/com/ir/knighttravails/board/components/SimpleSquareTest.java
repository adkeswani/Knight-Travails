package com.ir.knighttravails.board.components;

import org.junit.*;
import static org.junit.Assert.*;

public class SimpleSquareTest {
    @Test
    public void testDistanceTo() {
        System.out.println("Testing distanceTo");

        SimpleSquare s0 = new SimpleSquare(new SimplePair(-10, 20));
        SimpleSquare s1 = new SimpleSquare(new SimplePair(23, 1));

        Pair distance0 = s0.distanceTo(s1);
        assertEquals(33, distance0.getX());
        assertEquals(19, distance0.getY());

        System.out.println("Testing distance A to B is same as B to A");
        Pair distance1 = s1.distanceTo(s0);
        assertTrue(distance0.equals(distance1));

        System.out.println("Testing distance A to A is 0");
        distance0 = s0.distanceTo(s0);
        assertEquals(0, distance0.getX());
        assertEquals(0, distance0.getY());
    }

    @Test
    public void testEquals() {
        System.out.println("Testing equals");

        Square s0 = new SimpleSquare(new SimplePair(-3, 12));
        Square s1 = new SimpleSquare(new SimplePair(-3, 12));
        Square s2 = new SimpleSquare(new SimplePair(3, 12));
        Square s3 = new SimpleSquare(new SimplePair(7, 42));
        SimpleSquare s4 = new SimpleSquare(new SimplePair(-3, 12));
        Pair s5 = null;
        String s6 = "DEFJ";

        assertTrue(s0.equals(s1));
        assertFalse(s0.equals(s2));
        assertFalse(s0.equals(s3));
        assertTrue(s0.equals(s4));
        assertFalse(s0.equals(s5));
        assertFalse(s0.equals(s6));
    }

    @Test
    public void testHashCode() {
        System.out.println("Testing hashCode");

        Square s0 = new SimpleSquare(new SimplePair(-2, 21));
        Square s1 = new SimpleSquare(new SimplePair(-2, 21));
        Square s2 = new SimpleSquare(new SimplePair(2, 21));
        Square s3 = new SimpleSquare(new SimplePair(27, 2));
        SimpleSquare s4 = new SimpleSquare(new SimplePair(-2, 21));

        assertTrue(s0.hashCode() == s1.hashCode());
        assertFalse(s0.hashCode() == s2.hashCode());
        assertFalse(s0.hashCode() == s3.hashCode());
        assertTrue(s0.hashCode() == s4.hashCode());
    }
}
