//
//  SVG.swift
//  SierpinskiSwift
//
//  A class that can be used to generate
//  a basic SVG file.

import Foundation

open class SVG {
    // YOUR CODE HERE
    var contents : String //see Kopec's assignment notes about this string type
    
    // Initialize the SVG file with commands that will create a
    // width x height canvas
    public init(width: UInt, height: UInt) {
        // YOUR CODE HERE
        
        //TODO: work on converting values into string used to generate SVG file
        //Got it working partially with integer values but not with string values
        
        //addContents(contentsToAdd: "<?xml version=\"1.0\" encodings=\"utf-8\"?>\n")
        //addContents(contentsToAdd: "<svg version=\"1.1\" baseProfile=\"full\" width=\"%d\"height=\"%d\" xmlns=\"http://www.w3.org/2000/svg\">\n", width, height);

    }
    
    // YOUR CODE HERE
    public func drawLine(x1: Int, y1: Int, x2: Int, y2: Int, color: String) {
   //     addContents("")
    }

    //https://medium.com/@abhimuralidharan/variadic-functions-swift-54ce99a55c1d
    public func addContents(contentsToAdd: String) {
        contents += contentsToAdd
    } 
    
    // Write the SVG file to disk
    public func write(filePath: String) {
        // YOUR CODE HERE
        addContents(contentsToAdd: "</svg>\n"); //see write_graphics in ssg.h
    }
}
