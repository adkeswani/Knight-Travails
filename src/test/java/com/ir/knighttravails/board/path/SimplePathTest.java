package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.components.SimplePair;
import com.ir.knighttravails.board.components.SimpleSquare;
import com.ir.knighttravails.board.components.Square;
import java.util.List;
import java.util.LinkedList;
import java.util.Iterator;

import org.junit.*;
import static org.junit.Assert.*;

public class SimplePathTest {
    @Test
    public void testOneSquarePath() {
        System.out.println("Testing one square path");

        List<Square> l = new LinkedList<Square>();
        l.add(new SimpleSquare(new SimplePair(2, 5)));
        Path p = new SimplePath(l);

        assertEquals(l.get(0), p.getStart());
        assertEquals(l.get(0), p.getDestination());

        Iterator i = p.iterator();
        assertEquals(l.get(0), i.next());
        assertFalse(i.hasNext());
    }

    @Test
    public void testMultipleSquarePath() {
        System.out.println("Testing multiple square path");

        List<Square> l = new LinkedList<Square>();
        l.add(new SimpleSquare(new SimplePair(2, 5)));
        l.add(new SimpleSquare(new SimplePair(12, 15)));
        l.add(new SimpleSquare(new SimplePair(-22, 51)));
        Path p = new SimplePath(l);

        assertEquals(l.get(0), p.getStart());
        assertEquals(l.get(2), p.getDestination());
    }
}
