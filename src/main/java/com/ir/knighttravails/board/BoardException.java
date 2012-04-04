package com.ir.knighttravails.board;

public class BoardException extends RuntimeException {
    public BoardException(String message) {
        super(message);
    }

    public BoardException(String message, Throwable throwable) {
        super(message, throwable);
    }
}
