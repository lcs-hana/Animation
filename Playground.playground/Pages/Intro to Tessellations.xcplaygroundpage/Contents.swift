//: [Previous](@previous) / [Next](@next)
//: # Intro to Tessellations
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
turtle.penDown()


func drawArrow() {
    turtle.drawSelf()
    turtle.forward(steps: 75)
    turtle.right(by: 90)
    turtle.forward(steps: 25)
    turtle.left(by: 135)
    turtle.forward(steps: 106)
    turtle.left(by: 90)
    turtle.forward(steps: 106)
    turtle.left(by: 135)
    turtle.forward(steps: 25)
    turtle.right(by: 90)
    turtle.forward(steps: 75)
    turtle.left(by: 90)
    turtle.forward(steps: 100)
    turtle.left(by: 90)
    turtle.drawSelf()
    
}

canvas.highPerformance = false
drawArrow()
