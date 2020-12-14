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
turtle.setPosition(to: Point(x: 0, y: 500))
turtle.penDown()
turtle.drawSelf()
//draw squareish 1 which top is horizonatal
func drawSquareish1(){

    turtle.forward(steps: 75)
    turtle.right(by: 90)
    turtle.forward(steps: 15)
    turtle.right(by: 90)
    turtle.forward(steps: 15)
    turtle.left(by: 90)
    turtle.forward(steps: 40)
    turtle.left(by: 90)
    turtle.forward(steps: 15)
    turtle.right(by: 90)
    turtle.forward(steps: 15)
    turtle.right(by: 90)
    turtle.forward(steps: 50)
    turtle.right(by: 90)
    turtle.forward(steps: 15)
    turtle.left(by: 90)
    turtle.forward(steps: 25)
    turtle.right(by: 90)
    turtle.forward(steps: 55)
}

//draw squareish 2 which bottom is horizontal.
func drawSquareish2() {
    turtle.forward(steps: 50)
    turtle.right(by: 90)
    turtle.forward(steps: 15)
    turtle.left(by: 90)
    turtle.forward(steps: 25)
    turtle.right(by: 90)
    turtle.forward(steps: 55)
    turtle.right(by: 90)
    turtle.forward(steps: 75)
    turtle.right(by: 90)
    turtle.forward(steps: 15)
    turtle.right(by: 90)
    turtle.forward(steps: 15)
    turtle.left(by: 90)
    turtle.forward(steps: 40)
    turtle.left(by: 90)
    turtle.forward(steps: 15)
    turtle.right(by: 90)
    turtle.forward(steps: 15)
}

drawSquareish1()

turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 75)
turtle.right(by: 90)
turtle.forward(steps: 40)
turtle.penDown()
turtle.left(by: 90)

drawSquareish2()

turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 75)
turtle.right(by: 90)
turtle.forward(steps: 15)
turtle.right(by: 180)
turtle.forward(steps: 55)
turtle.penDown()
turtle.right(by: 90)

drawSquareish1()

turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 75)
turtle.right(by: 90)
turtle.forward(steps: 40)
turtle.penDown()
turtle.left(by: 90)

drawSquareish2()

turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 75)
turtle.right(by: 90)
turtle.forward(steps: 15)
turtle.right(by: 180)
turtle.forward(steps: 55)
turtle.penDown()
turtle.right(by: 90)

drawSquareish1()

turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 75)
turtle.right(by: 90)
turtle.forward(steps: 40)
turtle.penDown()
turtle.left(by: 90)

drawSquareish2()

turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 75)
turtle.right(by: 90)
turtle.forward(steps: 15)
turtle.right(by: 180)
turtle.forward(steps: 55)
turtle.penDown()
turtle.right(by: 90)

drawSquareish1()

turtle.penUp()
turtle.setPosition(to: Point(x: 0, y: 390))
turtle.penDown()
turtle.right(by: 90)
turtle.drawSelf()

drawSquareish1()








canvas.highPerformance = false
