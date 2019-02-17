# SierpinskiSwift
Draws an SVG file of the Sierpinski triangle.

## Layout
You will need to add code to `Sources/SierpinskiSwift/main.swift`, `Sources/SVGLibrary/Point.swift` and `Sources/SVGLibrary/SVG.swift`.
Do not change the function `main()` nor any of the unit tests. Please use all of our existing function signatures, but feel free to add your own as well.

## Running
Once your program is implemented, you can run it by executing `swift run` from the current directory.
You should get the output `sierpinski.svg`.

## Testing
Test the program by executing `swift test` from this directory. 
It will run two tests on the `midpoint()` function and one test that compares the outputted `sierpinski.svg` file to an included `sample.svg` file. The files are expected to be identical.

## Compiling and Running the C Version
On Linux or macOS you can compile and run the C version via:
```bash
gcc sierpinski.c
./a.out
```

## Expected Output
Your final output should be identical to `sample.svg`.
![Sierpinski Triangle](sample.svg)
