
class Point {
  x: number;
  y: number;
  
  constructor(x: number, y: number) {
    this.x = x;
    this.y = y;
  }

  add(point: Point) {
    console.log("x = " + (this.x + point.x) + "y = " + (this.y + point.y)); 
    return new Point(this.x + point.x, this.y + point.y);
  }
}

var p1 = new Point(0, 10);
console.log(p1);
var p2 = new Point(10, 20);
var p3 = p1.add(p2); // {x:10,y:30}
