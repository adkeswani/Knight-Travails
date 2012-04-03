/**
 * Enables game boards to be built up from multiple types of boards, each
 * implementing their own sets of rules.
 */
public abstract class 2DCGBoardDecorator {
    protected final 2DCGBoard decoratedBoard;
    
    public 2DCGBoardDecorator(2DCGBoard decoratedBoard) {
        this.decoratedBoard = decoratedBoard;
    }

    public 2DCGSquare doMove(2DCGMove m) {
        return decoratedBoard.doMove(m);
    }
}
