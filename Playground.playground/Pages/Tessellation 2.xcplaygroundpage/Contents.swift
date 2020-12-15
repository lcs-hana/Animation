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

turtle.penUp()
turtle.setPosition(to: Point(x: 10, y: 500))
turtle.penDown()
turtle.drawSelf()

//draw shape
func drawShape() {
turtle.forward(steps: 10)
turtle.right(by: 90)
turtle.forward(steps: 10)
turtle.left(by: 90)
turtle.forward(steps: 60)
turtle.left(by: 90)
turtle.forward(steps: 10)
turtle.right(by: 90)
turtle.forward(steps: 10)
turtle.right(by: 90)
turtle.forward(steps: 60)
turtle.right(by: 90)
turtle.forward(steps: 10)
turtle.left(by: 90)
turtle.forward(steps: 20)
turtle.left(by: 90)
turtle.forward(steps: 60)
turtle.left(by: 90)
turtle.forward(steps: 10)
turtle.left(by: 90)
turtle.forward(steps: 10)
turtle.right(by: 90)
turtle.forward(steps: 20)
turtle.right(by: 90)
turtle.forward(steps: 20)
turtle.left(by: 90)
turtle.forward(steps: 10)
turtle.right(by: 90)
turtle.forward(steps: 10)
turtle.right(by: 90)
turtle.forward(steps: 60)
turtle.right(by: 90)
turtle.forward(steps: 20)
turtle.right(by: 90)
turtle.forward(steps: 10)
turtle.left(by: 90)
turtle.forward(steps: 60)
turtle.left(by: 90)
turtle.forward(steps: 10)
turtle.right(by: 90)
turtle.forward(steps: 10)
turtle.right(by: 90)
turtle.forward(steps: 60)
turtle.right(by: 90)
turtle.forward(steps: 10)
turtle.left(by: 90)
turtle.forward(steps: 20)
turtle.left(by: 90)
turtle.forward(steps: 60)
turtle.left(by: 90)
turtle.forward(steps: 10)
turtle.left(by: 90)
turtle.forward(steps: 10)
turtle.right(by: 90)
turtle.forward(steps: 20)
turtle.right(by: 90)
turtle.forward(steps: 10)
turtle.left(by: 90)
turtle.forward(steps: 10)
turtle.right(by: 90)
turtle.forward(steps: 10)
turtle.right(by: 90)
turtle.forward(steps: 60)
}


//first row
drawShape()
turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()


turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()

turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()

turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()

//second row
turtle.penUp()
turtle.setPosition(to: Point(x: 10, y: 390))
turtle.penDown()
turtle.drawSelf()

turtle.right(by: 90)
drawShape()
turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()


turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()

turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()

turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()


canvas.highPerformance = false

turtle.penUp()
turtle.setPosition(to: Point(x: 10, y: 280))
turtle.penDown()
turtle.drawSelf()

turtle.right(by: 90)
drawShape()
turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()


turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()

turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()

turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()

//third row
turtle.penUp()
turtle.setPosition(to: Point(x: 10, y: 170))
turtle.penDown()
turtle.drawSelf()

turtle.right(by: 90)
drawShape()
turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()


turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()

turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()

turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()

//fourth row
turtle.penUp()
turtle.setPosition(to: Point(x: 10, y: 60))
turtle.penDown()
turtle.drawSelf()

turtle.right(by: 90)
drawShape()
turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()


turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()

turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()

turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 95)
turtle.penDown()

drawShape()


