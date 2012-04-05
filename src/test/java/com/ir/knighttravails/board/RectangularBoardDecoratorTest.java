package com.ir.knighttravails.board;
import com.ir.knighttravails.board.components.Pair;
import com.ir.knighttravails.board.components.SimplePair;
import com.ir.knighttravails.board.components.Square;
import com.ir.knighttravails.board.components.SimpleSquare;
import com.ir.knighttravails.board.components.SimpleMove;

import org.junit.*;
import static org.junit.Assert.*;

public class RectangularBoardDecoratorTest {
    @Test
    public void testDoMove() {
        System.out.println("Testing doMove");

        Board b = new RectangularBoardDecorator(new NoRulesBoard(), new SimplePair(3, 3));

        System.out.println("Testing 0 distance move from valid squares");
        Square s = b.doMove(new SimpleMove(new SimpleSquare(new SimplePair(0, 0)), new SimplePair(0, 0)));
        assertEquals(0, s.getCoords().getX());
        assertEquals(0, s.getCoords().getY());

        s = b.doMove(new SimpleMove(new SimpleSquare(new SimplePair(2, 2)), new SimplePair(0, 0)));
        assertEquals(2, s.getCoords().getX());
        assertEquals(2, s.getCoords().getY());

        System.out.println("Testing valid movements on set size board");
        s = b.doMove(new SimpleMove(new SimpleSquare(new SimplePair(2, 2)), new SimplePair(-1, -2)));
        assertEquals(1, s.getCoords().getX());
        assertEquals(0, s.getCoords().getY());

        s = b.doMove(new SimpleMove(new SimpleSquare(new SimplePair(0, 0)), new SimplePair(0, 1)));
        assertEquals(0, s.getCoords().getX());
        assertEquals(1, s.getCoords().getY());

        System.out.println("Testing invalid starting squares on set size board regardless of move");
        s = b.doMove(new SimpleMove(new SimpleSquare(new SimplePair(3, 3)), new SimplePair(-1, -2)));
        assertEquals(null, s);

        s = b.doMove(new SimpleMove(new SimpleSquare(new SimplePair(-1, 0)), new SimplePair(1, 2)));
        assertEquals(null, s);

        s = b.doMove(new SimpleMove(new SimpleSquare(new SimplePair(0, -1)), new SimplePair(1, 2)));
        assertEquals(null, s);

        System.out.println("Testing going outside board on set size board from valid starting square");
        s = b.doMove(new SimpleMove(new SimpleSquare(new SimplePair(0, 0)), new SimplePair(1, 3)));
        assertEquals(null, s);

        s = b.doMove(new SimpleMove(new SimpleSquare(new SimplePair(2, 1)), new SimplePair(0, -2)));
        assertEquals(null, s);

        s = b.doMove(new SimpleMove(new SimpleSquare(new SimplePair(1, 1)), new SimplePair(-3, -1)));
        assertEquals(null, s);

        s = b.doMove(new SimpleMove(new SimpleSquare(new SimplePair(2, 2)), new SimplePair(-1, 1)));
        assertEquals(null, s);
    }

    @Test
    public void testInvalidSizeConstructor() {
        System.out.println("Testing invalid sizes to constructor");

        Pair[] testSizes = {new SimplePair(0, 5), new SimplePair(10, -5), new SimplePair(0, -5)};
        for (Pair testSize : testSizes) {
            try {
                new RectangularBoardDecorator(new NoRulesBoard(), testSize);
                fail("Expected BoardException for invalid size");
            } catch (BoardException e) {
                assertEquals("Size must be greater than 0: width: " + testSize.getX() + ", height: " + testSize.getY(), e.getMessage());
            }
        }
    }
}
