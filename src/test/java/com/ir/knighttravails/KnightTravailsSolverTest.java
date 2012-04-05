package com.ir.knighttravails;
import com.ir.knighttravails.board.path.Path;
import com.ir.knighttravails.board.components.Square;
import java.util.Iterator;

import org.junit.*;
import static org.junit.Assert.*;

public class KnightTravailsSolverTest {
    @Test
    public void testSolve() {
        System.out.println("Testing solve");

        KnightTravailsSolver solver = new KnightTravailsSolver();

        System.out.println("Testing valid squares");
        String output = KnightTravailsSolver.getPathString(solver.solve("A5", "B6"));
        assertTrue(output.equals("C4 B6"));
        output = KnightTravailsSolver.getPathString(solver.solve("A8", "C8"));
        assertTrue(output.equals("B6 C8"));
        output = KnightTravailsSolver.getPathString(solver.solve("H1", "H3"));
        assertTrue(output.equals("F2 H3"));
        output = KnightTravailsSolver.getPathString(solver.solve("A1", "D4"));
        assertTrue(output.equals("B3 D4") || output.equals("C2 D4"));
        output = KnightTravailsSolver.getPathString(solver.solve("B3", "D2"));
        assertTrue(output.equals("D2"));
        
        System.out.println("Testing invalid squares");
        Path p = solver.solve("A0", "D2");
        assert(p == null);
        p = solver.solve("B9", "D2");
        assert(p == null);
        p = solver.solve("A5", "A5");
        assert(p == null);
    }
}
