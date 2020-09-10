class Players {
  String name;
  bool isDone;

  Players({this.name, this.isDone = false});

  void toggle() {
    isDone = !isDone;
  }
}
