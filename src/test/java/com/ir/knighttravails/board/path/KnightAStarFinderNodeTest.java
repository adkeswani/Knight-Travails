package com.ir.knighttravails.board.path;
import com.ir.knighttravails.board.components.Pair;
import com.ir.knighttravails.board.components.SimplePair;
import com.ir.knighttravails.board.components.Square;
import com.ir.knighttravails.board.components.SimpleSquare;
import java.util.Queue;
import java.util.PriorityQueue;

import org.junit.*;
import static org.junit.Assert.*;

public class KnightAStarFinderNodeTest {
    /*Note that these tests use co-ordinates that cannot exist on a chess board
    and previous squares might be more than 1 move away, but these do not affect
    what is being tested.*/
    @Test
    public void testCompareTo() {
        System.out.println("Testing compareTo");

        Queue<KnightAStarFinderNode> q = new PriorityQueue<KnightAStarFinderNode>();
        KnightAStarFinderNodeFactory factory = new KnightAStarFinderNodeFactory();

        System.out.println("Testing same movesToStart, different movesToEnd 1");

        Square destination = new SimpleSquare(new SimplePair(4, 3));
        KnightAStarFinderNode start = factory.make(new SimpleSquare(new SimplePair(20, 20)), destination, null);

        KnightAStarFinderNode noMovesToEnd = factory.make(destination, destination, start);
        KnightAStarFinderNode oneMovesToEnd = factory.make(new SimpleSquare(new SimplePair(2, 4)), destination, start);
        KnightAStarFinderNode twoMovesToEnd = factory.make(new SimpleSquare(new SimplePair(7, 5)), destination, start);
        KnightAStarFinderNode threeMovesToEnd = factory.make(new SimpleSquare(new SimplePair(0, 9)), destination, start);

        q.add(oneMovesToEnd);
        q.add(noMovesToEnd);
        q.add(threeMovesToEnd);
        q.add(twoMovesToEnd);
        
        assertEquals(noMovesToEnd, q.poll());
        assertEquals(oneMovesToEnd, q.poll());
        assertEquals(twoMovesToEnd, q.poll());
        assertEquals(threeMovesToEnd, q.poll());

        System.out.println("Testing same movesToStart, different movesToEnd 2");

        destination = new SimpleSquare(new SimplePair(7, 20));
        start = factory.make(new SimpleSquare(new SimplePair(0, 8)), destination, null);

        noMovesToEnd = factory.make(destination, destination, start);
        oneMovesToEnd = factory.make(new SimpleSquare(new SimplePair(5, 18)), destination, start);
        twoMovesToEnd = factory.make(new SimpleSquare(new SimplePair(10, 22)), destination, start);
        threeMovesToEnd = factory.make(new SimpleSquare(new SimplePair(7, 25)), destination, start);

        q.add(oneMovesToEnd);
        q.add(noMovesToEnd);
        q.add(threeMovesToEnd);
        q.add(twoMovesToEnd);
        
        assertEquals(noMovesToEnd, q.poll());
        assertEquals(oneMovesToEnd, q.poll());
        assertEquals(twoMovesToEnd, q.poll());
        assertEquals(threeMovesToEnd, q.poll());

        System.out.println("Testing different movesToStart, same movesToEnd");

        start = factory.make(new SimpleSquare(new SimplePair(10, -2)), destination, null);
        Square sameCurrent = new SimpleSquare(new SimplePair(10, 6));

        KnightAStarFinderNode noMovesFromStart = factory.make(sameCurrent, destination, null);
        KnightAStarFinderNode oneMovesFromStart = factory.make(sameCurrent, destination, start);
        KnightAStarFinderNode twoMovesFromStart = factory.make(sameCurrent, destination, oneMovesFromStart);
        KnightAStarFinderNode threeMovesFromStart = factory.make(sameCurrent, destination, twoMovesFromStart);

        q.add(noMovesFromStart);
        q.add(oneMovesFromStart);
        q.add(twoMovesFromStart);
        q.add(threeMovesFromStart);

        assertEquals(noMovesFromStart, q.poll());
        assertEquals(oneMovesFromStart, q.poll());
        assertEquals(twoMovesFromStart, q.poll());
        assertEquals(threeMovesFromStart, q.poll());
    }

    @Test
    public void testGetPathSquares() {
        System.out.println("Testing getPathSquares");

        Square destination = new SimpleSquare(new SimplePair(0, 0));
        KnightAStarFinderNodeFactory factory = new KnightAStarFinderNodeFactory();

        KnightAStarFinderNode n0 = factory.make(new SimpleSquare(new SimplePair(5, 15)), destination, null);
        KnightAStarFinderNode n1 = factory.make(new SimpleSquare(new SimplePair(-4, 5)), destination, n0);
        KnightAStarFinderNode n2 = factory.make(new SimpleSquare(new SimplePair(45, -12)), destination, n1);
        KnightAStarFinderNode n3 = factory.make(new SimpleSquare(new SimplePair(-5, -35)), destination, n2);
        
        System.out.println("Testing last square in path");

        assertEquals(n0.getSquare(), n3.getPathSquares().get(0));
        assertEquals(n1.getSquare(), n3.getPathSquares().get(1));
        assertEquals(n2.getSquare(), n3.getPathSquares().get(2));
        assertEquals(n3.getSquare(), n3.getPathSquares().get(3));
        assertEquals(4, n3.getPathSquares().size());

        System.out.println("Testing first square in path");

        assertEquals(n0.getSquare(), n0.getPathSquares().get(0));
        assertEquals(1, n0.getPathSquares().size());
    }
}
