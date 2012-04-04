package com.ir.knighttravails;
import com.ir.knighttravails.board.*;
import com.ir.knighttravails.board.components.*;
import com.ir.knighttravails.board.path.*;
import java.util.PriorityQueue;
import java.util.LinkedList;

public class KnightTravails {
    public static final int CHESS_BOARD_WIDTH = 8;
    public static final int CHESS_BOARD_HEIGHT = 8;

    public static void main(String[] args) {
        if (args.length < 2) {
            System.out.println("Usage: program squareInAlgebraicNotation1 squareInAlgebraicNotation2");
        }

        Pair start = AlgebraicNotationSquare.idToCoords(args[0]);
        Pair end = AlgebraicNotationSquare.idToCoords(args[1]);

        if (start == null || end == null) {
            System.out.println("Both squares are required to be algebraic notation format, e.g. A5");
        }

        //TODO: What if squares are off the board to begin with??

        Board base = new NoRulesBoard();
        Board rect = new RectangularBoardDecorator(base, new SimplePair(CHESS_BOARD_WIDTH, CHESS_BOARD_HEIGHT));
        Board chess = new AlgebraicNotationBoardDecorator(rect);

        Piece knight = new KnightPiece(new SimpleSquare(start));

        PathFinder pf = new SimplePathFinder(new LinkedList<SimpleFinderNode>(), new SimpleFinderNodeFactory());
        //(new PriorityQueue<SimpleFinderNode>(), new SimpleFinderNodeFactory());
        Path p = pf.findPath(chess, knight, new SimpleSquare(end));

        //TODO: Fix formatting, should not have a space
        for (Square s : p) {
            System.out.print(s + " ");
        }
    }
}
