package com.ir.knighttravails;
import com.ir.knighttravails.board.*;
import com.ir.knighttravails.board.components.*;
import com.ir.knighttravails.board.path.*;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;

@RunWith(Suite.class)
@Suite.SuiteClasses({
    SimplePairTest.class,
    SimpleSquareTest.class,
    KnightPieceTest.class,
    AlgebraicNotationSquareTest.class,
    RectangularBoardDecoratorTest.class,
    AlgebraicNotationBoardDecoratorTest.class,
    SimplePathTest.class,
    KnightAStarFinderNodeTest.class,
    KnightTravailsSolverTest.class
})
public class KnightTravailsTestSuite {
}
