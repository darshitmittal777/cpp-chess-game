# C++ Chess Game - 2 Player Edition

A complete, playable chess game written in C++ for two players. Features a console-based interface with full chess rules implementation including castling, en passant, and pawn promotion.

## Features

- ✅ Complete chess rules implementation
- ✅ 2-player local gameplay
- ✅ Console-based ASCII board display  
- ✅ Algebraic notation input (e.g., "e2e4")
- ✅ Move validation and legal move checking
- ✅ Check and checkmate detection
- ✅ Special moves: castling, en passant, pawn promotion
- ✅ Stalemate detection
- ✅ Clean, object-oriented design

## Requirements

- C++17 compatible compiler (g++, clang++, etc.)
- Make (optional, for easier building)

## Quick Start

### Building the Game

#### Using Make (Recommended)
```bash
make
```

#### Manual Compilation
```bash
g++ -std=c++17 -Wall -Wextra -O2 main.cpp piece.cpp board.cpp game.cpp -o chess
```

### Running the Game
```bash
./chess
```
or
```bash
make run
```

## How to Play

### Starting a Game
1. Run the executable
2. The game displays the initial chess board
3. White moves first

### Making Moves
Enter moves using algebraic notation:
- Basic moves: `e2e4`, `g1f3`, `a7a5`
- Alternative format: `e2-e4`, `g1-f3`
- Castling: `e1g1` (king-side), `e1c1` (queen-side)
- Pawn promotion: `e7e8q` (promote to queen), `e7e8r` (rook), `e7e8b` (bishop), `e7e8n` (knight)

### Game Controls
- Type your move and press Enter
- Type `quit` or `exit` to end the game
- Invalid moves will be rejected with an explanation

### Example Game Session
```
Welcome to C++ Chess Game!
Enter moves in algebraic notation (e.g., 'e2e4' or 'e2-e4')
Type 'quit' to exit the game

  +---+---+---+---+---+---+---+---+
8 | r | n | b | q | k | b | n | r |
  +---+---+---+---+---+---+---+---+
7 | p | p | p | p | p | p | p | p |
  +---+---+---+---+---+---+---+---+
6 |   |   |   |   |   |   |   |   |
  +---+---+---+---+---+---+---+---+
5 |   |   |   |   |   |   |   |   |
  +---+---+---+---+---+---+---+---+
4 |   |   |   |   |   |   |   |   |
  +---+---+---+---+---+---+---+---+
3 |   |   |   |   |   |   |   |   |
  +---+---+---+---+---+---+---+---+
2 | P | P | P | P | P | P | P | P |
  +---+---+---+---+---+---+---+---+
1 | R | N | B | Q | K | B | N | R |
  +---+---+---+---+---+---+---+---+
    a   b   c   d   e   f   g   h

White to move: e2e4
```

## File Structure

```
chess-game/
├── chess.h          # Header file with class declarations
├── piece.cpp        # Piece classes and move generation
├── board.cpp        # Board representation and game logic
├── game.cpp         # Game controller and user interface
├── main.cpp         # Program entry point
├── Makefile         # Build configuration
└── README.md        # This file
```

## Architecture

The game follows object-oriented design principles:

### Core Classes
- **Piece** (abstract): Base class for all chess pieces
  - Pawn, Rook, Knight, Bishop, Queen, King (derived classes)
- **ChessBoard**: Manages board state, move validation, and game rules
- **ChessGame**: Controls game flow and user interaction
- **Position**: Represents board coordinates
- **Move**: Represents a move from one position to another

### Key Features
- **Move Generation**: Each piece type implements its own movement rules
- **Legal Move Validation**: Checks for check, checkmate, and stalemate
- **Special Rules**: Complete implementation of castling, en passant, and promotion
- **Memory Management**: Uses smart pointers for automatic memory management

## Advanced Building Options

### Debug Build
```bash
make debug
```
Includes debugging symbols and additional error checking.

### Clean Build Files
```bash
make clean
```

### Install System-wide (Linux/macOS)
```bash
sudo make install
```

## Piece Symbols

| Piece | White | Black |
|-------|-------|-------|
| Pawn | P | p |
| Rook | R | r |
| Knight | N | n |
| Bishop | B | b |
| Queen | Q | q |
| King | K | k |

## Game Rules Implemented

- ✅ Basic piece movements
- ✅ Capture mechanics
- ✅ Check detection and prevention
- ✅ Checkmate and stalemate detection
- ✅ Castling (both king-side and queen-side)
- ✅ En passant capture
- ✅ Pawn promotion
- ✅ Turn-based gameplay

## Future Enhancements

Potential additions for extended functionality:
- Graphical user interface (SFML/SDL)
- Move history and notation display
- Save/load game functionality
- Time controls
- AI opponent
- Network multiplayer
- Move undo/redo

## Troubleshooting

### Compilation Errors
- Ensure you have a C++17 compatible compiler
- Check that all source files are in the same directory
- Verify make is installed (or compile manually)

### Runtime Issues
- Make sure the executable has proper permissions
- Try running from the directory containing the executable

## Contributing

This is a complete, working chess implementation. Feel free to extend it with additional features like:
- Better user interface
- AI opponents
- Network play
- Move analysis

## License

This project is provided as-is for educational and entertainment purposes.
