package com.ir.knighttravails.board;

/**
 * Exception used when game board-specific errors occur, such as creating a 
 * negative-sized board or a negative algebraic notation square
 */
public class BoardException extends RuntimeException {
    public BoardException(String message) {
        super(message);
    }

    public BoardException(String message, Throwable throwable) {
        super(message, throwable);
    }
}
