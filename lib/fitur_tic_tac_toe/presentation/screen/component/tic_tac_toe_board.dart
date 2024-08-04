import 'dart:math';

import 'package:flutter/material.dart';

class TicTacToeBoard extends StatelessWidget {
  const TicTacToeBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final tableSize = min(screenSize.width, screenSize.height) - 48;
    final cellSize = tableSize / 3;

    return Table(
      border: TableBorder.all(
        width: 2
      ),
      defaultColumnWidth: FixedColumnWidth(cellSize),
      children: [
        for (int row = 0 ; row < 3 ; row++)
          TableRow(
            children: [
              for (int col = 0 ; col < 3 ; col++)
                TableCell(
                  child: SizedBox(
                    height: cellSize,
                    child: Icon(
                      (row + col) % 2 == 0 ? Icons.circle_outlined : Icons.close,
                      color: (row + col) % 2 == 0 ? Colors.blue : Colors.red,
                      size: 72,
                    ),
                  )
                )
            ]
          )
      ],
    );
  }
}
