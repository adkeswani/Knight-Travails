package com.ir.knighttravails.board.components;

import org.junit.*;
import static org.junit.Assert.*;

public class SimplePairTest {
    @Test
    public void testAdd() {
        System.out.println("Testing add");

        Pair p0 = new SimplePair(8, -3);
        Pair p1 = new SimplePair(-15, 5);

        Pair sum0 = p0.add(p1);
        assertEquals(-7, sum0.getX());
        assertEquals(2, sum0.getY());

        Pair sum1 = p1.add(p0);
        assertEquals(-7, sum1.getX());
        assertEquals(2, sum1.getY());
    }

    @Test
    public void testSubtract() {
        System.out.println("Testing subtract");

        Pair p0 = new SimplePair(8, -3);
        Pair p1 = new SimplePair(-15, 5);

        Pair difference0 = p0.subtract(p1);
        assertEquals(23, difference0.getX());
        assertEquals(-8, difference0.getY());

        Pair difference1 = p1.subtract(p0);
        assertEquals(-23, difference1.getX());
        assertEquals(8, difference1.getY());
    }

    @Test
    public void testEquals() {
        System.out.println("Testing equals");

        Pair p0 = new SimplePair(-5, 16);
        Pair p1 = new SimplePair(-5, 16);
        Pair p2 = new SimplePair(5, 16);
        Pair p3 = new SimplePair(7, 42);
        SimplePair p4 = new SimplePair(-5, 16);
        Pair p5 = null;
        String p6 = "ABC";

        assertTrue(p0.equals(p1));
        assertFalse(p0.equals(p2));
        assertFalse(p0.equals(p3));
        assertTrue(p0.equals(p4));
        assertFalse(p0.equals(p5));
        assertFalse(p0.equals(p6));
    }

    @Test
    public void testHashCode() {
        System.out.println("Testing hashCode");

        Pair p0 = new SimplePair(-5, 6);
        Pair p1 = new SimplePair(-5, 6);
        Pair p2 = new SimplePair(5, 6);
        Pair p3 = new SimplePair(7, 2);
        SimplePair p4 = new SimplePair(-5, 6);

        assertTrue(p0.hashCode() == p1.hashCode());
        assertFalse(p0.hashCode() == p2.hashCode());
        assertFalse(p0.hashCode() == p3.hashCode());
        assertTrue(p0.hashCode() == p4.hashCode());
    }
}
