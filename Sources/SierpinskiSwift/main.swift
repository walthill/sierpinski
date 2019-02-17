//
//  main.swift
//  SierpinskiSwift
//
//  Runs the main sierpinski algorithm.

import SVGLibrary

// Online Swift playground with good error handling
// http://online.swiftplayground.run 

// YOUR CODE HERE
func drawTriangle(_ p1: Point, _ p2: Point, _ p3: Point, _ figure: SVG) {
    figure.drawLine(p1.x, p1.y, p2.x, p2.y, "black");
    figure.drawLine(p2.x, p2.y, p3.x, p3.y, "black");
    figure.drawLine(p3.x, p3.y, p1.x, p1.y, "black");
}


// Draw a triangle between the three points and then recursively draw
// three more triangles in each of the three corners of the first triangle.
func sierpinski(p1: Point, p2: Point, p3: Point, level: Int, figure: SVG) {
    // YOUR CODE HERE
    if level <= 0 return
    
    drawTriangle(p1, p2, p3, figure)
    sierpinski(p1: p1, p2: midpoint(p1, p2), p3: midpoint(p1, p3), level: level - 1, figure: figure);
    sierpinski(p1: p2, p2: midpoint(p1, p2), p3: midpoint(p2, p3), level: level - 1, figure: figure);
    sierpinski(p1: p3, p2: midpoint(p1, p3), p3: midpoint(p2, p3), level: level - 1, figure: figure);
}

// Start the algorithm off using a 300x300 canvas and its largest triangle
// going across that canvas
func main() {
    let figure: SVG = SVG(width: 300, height: 300)
    let p1: Point = (0, 300)
    let p2: Point = (150, 0)
    let p3: Point = (300, 300)
    sierpinski(p1: p1, p2: p2, p3: p3, level: 5, figure: figure)
    figure.write(filePath: "sierpinski.svg")
}

main()
