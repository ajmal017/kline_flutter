class Pointer {
  double x;
  double y;
  void setX(double x) {
    this.x = x;
  }
  void setY(double y) {
   this.y = y;
  }
  @override
  String toString() {
    return "Pointer{" +
        "x=" + "$x" +
        ", y=" + "$y" +
        '}';
  }
}