package com.ir.knighttravails;
import com.ir.knighttravails.board.*;
import com.ir.knighttravails.board.components.*;
import com.ir.knighttravails.board.path.*;
import java.util.PriorityQueue;
import java.util.Iterator;

/**
 * A class that solves the Knight Travails problem
 */
public class KnightTravailsSolver {
    private static final int CHESS_BOARD_WIDTH = 8;
    private static final int CHESS_BOARD_HEIGHT = 8;

    private Board chessBoard;
    private PathFinder pf;

    public KnightTravailsSolver() {
        Board base = new NoRulesBoard();
        Board rect = new RectangularBoardDecorator(base, new SimplePair(CHESS_BOARD_WIDTH, CHESS_BOARD_HEIGHT));

        chessBoard = new AlgebraicNotationBoardDecorator(rect);
        pf = new QueueBasedPathFinder<KnightAStarFinderNode>(new PriorityQueue<KnightAStarFinderNode>(), 
                                                             new KnightAStarFinderNodeFactory());
    }

    /**
     * Returns a solution to the Knight Travails problem. Prints error messages
     * if there is an issue with the input strings.
     * 
     * @param   startID the start square in algebraic notation
     * @param   destinationID the destination square in algebraic notation
     * @return  the shortest path from the start to the destination square
                or null if input was invalid
     */
    public Path solve(String startID, String destinationID) {
        Pair startCoords = AlgebraicNotationSquare.idToCoords(startID);
        Pair destinationCoords = AlgebraicNotationSquare.idToCoords(destinationID);

        if (startCoords == null || destinationCoords == null) {
            System.out.println("Input squares are required to be algebraic notation format, e.g. A5");
            return null;
        }

        Square start = new AlgebraicNotationSquare(startCoords);
        Square destination = new AlgebraicNotationSquare(destinationCoords);

        if ((chessBoard.doMove(new SimpleMove(start, new SimplePair(0, 0))) == null) ||
            (chessBoard.doMove(new SimpleMove(destination, new SimplePair(0, 0))) == null)) {
            System.out.println("Input squares are required to be on a standard chess board");
            return null;
        }

        if (start.equals(destination)) {
            System.out.println("Input squares cannot be the same");
            return null;
        }

        Piece knight = new KnightPiece(start);
        return pf.findPath(chessBoard, knight, destination);
    }

    //Returns path as a string in the format required by the assignment
    //i.e. space separated, no start square
    public static String getPathString(Path p) {
        StringBuilder pathString = new StringBuilder();
        Iterator<Square> pathSquares = p.iterator();

        //Skip start square
        pathSquares.next();

        while (pathSquares.hasNext()) {
            pathString.append(pathSquares.next());
            pathString.append(" ");
        }
        
        //Remove space from end
        return pathString.substring(0, pathString.length() - 1);
    }

    public static void main(String[] args) {
        if (args.length < 2) {
            System.out.println("Requires 2 chess squares in algebraic notation as arguments");
            return;
        }

        KnightTravailsSolver solver = new KnightTravailsSolver();
        Path solution = solver.solve(args[0], args[1]);
        if (solution != null) {
            System.out.println(getPathString(solution));
        }
    }
}
