package com.ir.knighttravails.board.components;
import com.ir.knighttravails.board.*;
import java.util.Collection;

import org.junit.*;
import static org.junit.Assert.*;

public class KnightPieceTest {
    @Test
    public void testValidDestinations() {
        System.out.println("Testing validDestinations");

        Board b = new RectangularBoardDecorator(new NoRulesBoard(), new SimplePair(8, 8));

        System.out.println("Testing where all moves are valid");
        KnightPiece kp = new KnightPiece(new SimpleSquare(new SimplePair(4, 4)));
        Collection<Square> dests = kp.validDestinations(b);
        assertEquals(8, dests.size());
        assertTrue(dests.contains(new SimpleSquare(new SimplePair(2, 3))));
        assertTrue(dests.contains(new SimpleSquare(new SimplePair(2, 5))));
        assertTrue(dests.contains(new SimpleSquare(new SimplePair(3, 2))));
        assertTrue(dests.contains(new SimpleSquare(new SimplePair(3, 6))));
        assertTrue(dests.contains(new SimpleSquare(new SimplePair(5, 2))));
        assertTrue(dests.contains(new SimpleSquare(new SimplePair(5, 6))));
        assertTrue(dests.contains(new SimpleSquare(new SimplePair(6, 3))));
        assertTrue(dests.contains(new SimpleSquare(new SimplePair(6, 5))));
        
        System.out.println("Testing where some moves are valid");
        kp.setCurrent(new SimpleSquare(new SimplePair(1, 1)));
        dests = kp.validDestinations(b);
        assertEquals(4, dests.size());
        assertTrue(dests.contains(new SimpleSquare(new SimplePair(0, 3))));
        assertTrue(dests.contains(new SimpleSquare(new SimplePair(2, 3))));
        assertTrue(dests.contains(new SimpleSquare(new SimplePair(3, 0))));
        assertTrue(dests.contains(new SimpleSquare(new SimplePair(3, 2))));
        
        System.out.println("Testing where no moves are valid");
        b = new RectangularBoardDecorator(new NoRulesBoard(), new SimplePair(2, 2));
        dests = kp.validDestinations(b);
        assertTrue(dests.isEmpty());
    }
}
