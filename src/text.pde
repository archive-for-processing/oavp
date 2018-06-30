public class OavpText {

  OavpPosition cursor;
  float padding;

  OavpText(OavpPosition cursor) {
    this.cursor = cursor;
    this.padding = 50;
  }

  void setPadding(float padding) {
    this.padding = padding;
  }

  void write(String text, float x, float y, float w, float h, float padding) {
    pushStyle();
    text(text, x + padding, y + padding, w - padding * 2, h - padding * 2);
    popStyle();
  }

  void write(String text, float x, float y) {
    pushStyle();
    text(text, x, y, 100, 50);
    popStyle();
  }

  void write(String text) {
    pushStyle();
    text(text, cursor.getScaledX() + padding, cursor.getScaledY() + padding, cursor.scale - padding * 2, cursor.scale - padding * 2);
    popStyle();
  }

  void write(String text, color inputColor) {
    pushStyle();
    noStroke();
    fill(inputColor);
    text(text, cursor.getScaledX() + padding, cursor.getScaledY() + padding, cursor.scale - padding * 2, cursor.scale - padding * 2);
    popStyle();
  }

  void write(float value, color inputColor) {
    pushStyle();
    noStroke();
    fill(inputColor);
    text(String.valueOf(value), cursor.getScaledX() + padding, cursor.getScaledY() + padding, cursor.scale - padding * 2, cursor.scale - padding * 2);
    popStyle();
  }

  String read(String path) {
    String[] lines = loadStrings(path);
    String text = String.join("\n", lines);
    return text;
  }
}