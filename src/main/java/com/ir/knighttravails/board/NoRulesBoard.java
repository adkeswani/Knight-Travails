package com.ir.knighttravails.board;
import com.ir.knighttravails.board.components.*;

/**
 * Board that places no restrictions on moves that can be made to be used
 * as the basis for other game boards.
 */
public class NoRulesBoard implements Board {
    public Square doMove(Move m) {
        return new SimpleSquare(m.getStart().getCoords().add(m.getDistance()));
    }
}
