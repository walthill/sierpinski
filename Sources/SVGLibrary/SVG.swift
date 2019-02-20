//
//  SVG.swift
//  SierpinskiSwift
//
//  A class that can be used to generate
//  a basic SVG file.

import Foundation

open class SVG {
    // YOUR CODE HERE
    var contents : String = ""
    
    // Initialize the SVG file with commands that will create a
    // width x height canvas
    public init(width: UInt, height: UInt) {
        // YOUR CODE HERE
        
        addContents(contentsToAdd: "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n")
        addContents(contentsToAdd: "<svg version=\"1.1\" baseProfile=\"full\" width=\"\(width)\" height=\"\(height)\" xmlns=\"http://www.w3.org/2000/svg\">\n");
    }
    
    // YOUR CODE HERE
    public func drawLine(x1: Int, y1: Int, x2: Int, y2: Int, color: String) {
        addContents(contentsToAdd: "<line x1=\"\(x1)\" y1=\"\(y1)\" x2=\"\(x2)\" y2=\"\(y2)\" stroke=\"\(color)\" />\n")
    }

    //Add string values to svg markup text
    public func addContents(contentsToAdd: String) {
        contents += contentsToAdd
    } 
    
    // Write the SVG file to disk
    public func write(filePath: String) {
        // YOUR CODE HERE

        //end-of-file tag
        addContents(contentsToAdd: "</svg>\n");
        
        do {
            try contents.write(toFile: filePath, atomically: false, encoding: .utf8)
        }
        catch { 
            print("FILE WRITE FAILED!") 
        }
    }
}
