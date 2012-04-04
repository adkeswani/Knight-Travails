package com.ir.knighttravails.board;
import com.ir.knighttravails.board.components.*;

import org.junit.*;
import static org.junit.Assert.*;

public class AlgebraicNotationBoardDecoratorTest {
    @Test
    public void testDoMove() {
        System.out.println("Testing doMove");

        Board rect = new RectangularBoardDecorator(new NoRulesBoard(), new SimplePair(4, 4));
        Board b = new AlgebraicNotationBoardDecorator(rect);

        System.out.println("Testing valid moves");
        Square s = b.doMove(new SimpleMove(new AlgebraicNotationSquare(AlgebraicNotationSquare.idToCoords("A1")), new SimplePair(1, 1)));
        assertEquals("B2", s.toString());

        s = b.doMove(new SimpleMove(new AlgebraicNotationSquare(new SimplePair(2, 2)), new SimplePair(1, -1)));
        assertEquals("D2", s.toString());

        System.out.println("Testing invalid moves");
        s = b.doMove(new SimpleMove(new AlgebraicNotationSquare(AlgebraicNotationSquare.idToCoords("D1")), new SimplePair(1, 1)));
        assertEquals(null, s);
    }
}
