class Button {
  float x, y, w, h;
  String navn;
  Action a;

  Button(int x, int y, int w, int h, String navn) {
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    this.navn=navn;
  }

  void addAction(Action a) {
    this.a=a;
  }

  void display() {
    fill(255);
    rect(x, y, w, h);
    fill(0);
    text(navn, x+ textWidth(navn)/2+ w/8, y+h/2);
  }

  void click() {
    if ((mouseX>x)&&(mouseX<x+w)&&(mouseY>y)&&(mouseY<y+h)) {
      a.execute();
    }
  }
}
