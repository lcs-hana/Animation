//: [Previous](@previous) / [Next](@next)
//: # Abstract Art with Functions
//:
//: The `CanvasGraphics` framework also allows you to draw using a "LOGO turtle" metaphor.
//:
//: [Documentation for the Tortoise abstraction](http://russellgordon.ca/CanvasGraphics/Documentation/Classes/Tortoise.html) is available.
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 10 and 11.
 */
let preferredWidth = 500
let preferredHeight = 500
/*:
 ## Required code
 
 Lines 21 to 29 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
## Tortoise class

To use the Tortoise abstraction, just create an instance of the Tortoise class, and provide it with a canvas object that is should draw upon.
*/

// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

canvas.highPerformance = true


// Draw a polygon with "n" sides
func drawPolygon(withSides n: Int, withLength l: Int) {
    
    let exteriorAngle: Degrees = 360.0 / Degrees(n)
    for _ in 1...n {
        turtle.forward(steps: l)
        turtle.left(by: exteriorAngle)
    }
    
}

// Move out of the corner of the canvas
turtle.penUp()
turtle.setPosition(to: Point(x: 100, y: 200))

// Two circles!
func drawTwoSmallCircles() {
    turtle.penDown()
    drawPolygon(withSides: 30, withLength: 1)
    turtle.penUp()
    turtle.forward(steps: 30)
    turtle.penDown()
    drawPolygon(withSides: 30, withLength: 1)
}

func upAndLeft() {
    
    // Move turtle up and left
    turtle.penUp()
    turtle.left(by: 90)
    turtle.forward(steps: 25)
    turtle.left(by: 90)
    turtle.forward(steps: 20)
    turtle.left(by: 180)

}

// Draw some circles in a group
drawTwoSmallCircles()
// Move turtle up and left
upAndLeft()
// Draw some circles in a group
drawTwoSmallCircles()
// Move turtle up and left
upAndLeft()
// Draw one circle
turtle.penDown()
drawPolygon(withSides: 30, withLength: 1)



// Turn off high performance to see the result
canvas.highPerformance = false
turtle.penUp()

