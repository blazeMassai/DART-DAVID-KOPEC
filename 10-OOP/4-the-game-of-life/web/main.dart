library life;

import 'dart:html';
import 'dart:math';
import 'dart:async';

part 'cell.dart';
part 'grid.dart';

Timer? timer;
Grid? grid;
CanvasElement? lifeCanvas;
//when the canvas is clicked we gotta flip the cell

void clickHappened(MouseEvent me) {
  num clickX= me.offset.x;
  num clickY= me.offset.y;
  grid!.flip((clickX).toInt(), clickY.toInt());
}

/// Start or stop the Timer from calling update on grid
void startStopTimer(MouseEvent me) {
  if (timer == null) {
    timer = Timer.periodic(const Duration(seconds:1), grid!.update);
    querySelector("#startStop")?.text = "Stop";
  } else {
    timer?.cancel();
    timer = null;
    querySelector("#startStop")?.text = "Start";
  }
}

void main() {
  lifeCanvas = querySelector("#lifeCanvas") as CanvasElement?;
// setup grid
  grid = Grid(lifeCanvas!);
  grid?.drawOnce();
  lifeCanvas?.onClick.listen(clickHappened);
  querySelector("#startStop")?.onClick.listen(startStopTimer);
}
