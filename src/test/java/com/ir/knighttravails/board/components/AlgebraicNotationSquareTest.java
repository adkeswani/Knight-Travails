package com.ir.knighttravails.board.components;
import com.ir.knighttravails.board.BoardException;

import org.junit.*;
import static org.junit.Assert.*;

public class AlgebraicNotationSquareTest {
    @Test
    public void testIDToCoords() {
        System.out.println("Testing ID to coords");

        System.out.println("Testing A1 square");
        Pair coords = AlgebraicNotationSquare.idToCoords("A1");
        assertEquals(0, coords.getX());
        assertEquals(0, coords.getY());

        System.out.println("Testing case is ignored");
        coords = AlgebraicNotationSquare.idToCoords("b9");
        assertEquals(1, coords.getX());
        assertEquals(8, coords.getY());
        
        System.out.println("Testing multiple characters");
        coords = AlgebraicNotationSquare.idToCoords("ZF56");
        assertEquals(681, coords.getX());
        assertEquals(55, coords.getY());

        coords = AlgebraicNotationSquare.idToCoords("AJS343");
        assertEquals(954, coords.getX());
        assertEquals(342, coords.getY());

        System.out.println("Testing Z and AA squares");
        coords = AlgebraicNotationSquare.idToCoords("Z18");
        assertEquals(25, coords.getX());
        assertEquals(17, coords.getY());

        coords = AlgebraicNotationSquare.idToCoords("Aa18");
        assertEquals(26, coords.getX());
        assertEquals(17, coords.getY());

        System.out.println("Testing invalid IDs");
        coords = AlgebraicNotationSquare.idToCoords("A0");
        assertEquals(null, coords);

        coords = AlgebraicNotationSquare.idToCoords("F45A");
        assertEquals(null, coords);

        coords = AlgebraicNotationSquare.idToCoords("11");
        assertEquals(null, coords);

        coords = AlgebraicNotationSquare.idToCoords("A");
        assertEquals(null, coords);
    }

    @Test
    public void testToString() {
        System.out.println("Testing toString()");

        System.out.println("Testing A1 square");
        Square s = new AlgebraicNotationSquare(AlgebraicNotationSquare.idToCoords("A1"));
        assertEquals("A1", s.toString());

        System.out.println("Testing repeated characters");
        s = new AlgebraicNotationSquare(AlgebraicNotationSquare.idToCoords("ZF56"));
        assertEquals("ZF56", s.toString());

        s = new AlgebraicNotationSquare(AlgebraicNotationSquare.idToCoords("AJS343"));;
        assertEquals("AJS343", s.toString());

        System.out.println("Testing Z -> AA squares");
        s = new AlgebraicNotationSquare(AlgebraicNotationSquare.idToCoords("Z18"));
        assertEquals("Z18", s.toString());

        s = new AlgebraicNotationSquare(AlgebraicNotationSquare.idToCoords("AA18"));
        assertEquals("AA18", s.toString());
    }

    @Test
    public void testInvalidConstructorArguments() {
        System.out.println("Testing invalid arguments to constructors");

        System.out.println("Testing negative coords to coords constructor");
        Pair[] testCoords = {new SimplePair(-10, 5), new SimplePair(-10, -55), new SimplePair(10, -5)};
        for (Pair testCoord : testCoords) {
            try {
                new AlgebraicNotationSquare(testCoord);
                fail("Expected BoardException for negative co-ordinates");
            } catch (BoardException e) {
                assertEquals("Does not support negative co-ordinates: X: " + testCoord.getX() + ", Y: " + testCoord.getY(), e.getMessage());
            }
        }
    }
}
