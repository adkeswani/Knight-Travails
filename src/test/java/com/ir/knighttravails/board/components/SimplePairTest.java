package com.ir.knighttravails.board.components;

import org.junit.*;
import static org.junit.Assert.*;

public class SimplePairTest {
    @Test
    public void testAdd() {
        System.out.println("Testing add");

        Pair p1 = new SimplePair(8, -3);
        Pair p2 = new SimplePair(-15, 5);
        Pair sum = p1.add(p2);

        assertEquals(-7, sum.getX());
        assertEquals(2, sum.getY());
    }
}
