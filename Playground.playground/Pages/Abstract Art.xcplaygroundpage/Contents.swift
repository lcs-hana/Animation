//: [Previous](@previous) / [Next](@next)
//: # Abstract Art
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


// Turn on high performance mode
canvas.highPerformance = false

//Draw a triangle
turtle.forward(steps: 60)
turtle.left(by: 120)

turtle.forward(steps: 60)
turtle.left(by: 120)

//turtle.drawSelf() To know where the tirtle is

turtle.forward(steps: 60)
turtle.left(by: 120)


//move tirtle over to the right
turtle.penUp()
turtle.forward(steps: 100)
turtle.penDown()

//Draw a square
turtle.forward(steps: 50)
turtle.left(by: 90)

turtle.forward(steps: 50)
turtle.left(by: 90)

turtle.forward(steps: 50)
turtle.left(by: 90)

turtle.forward(steps: 50)
turtle.left(by: 90)


turtle.penUp()
turtle.forward(steps: 100)
turtle.penDown()

//Draw pentagon
turtle.forward(steps: 60)
turtle.left(by: 72)

turtle.forward(steps: 60)
turtle.left(by: 72)

turtle.forward(steps: 60)
turtle.left(by: 72)

turtle.forward(steps: 60)
turtle.left(by: 72)

turtle.forward(steps: 60)
turtle.left(by: 72)

turtle.penUp()
turtle.forward(steps: 150)
turtle.penDown()

//Hexagon
turtle.forward(steps: 60)
turtle.left(by: 60)

turtle.forward(steps: 60)
turtle.left(by: 60)

turtle.forward(steps: 60)
turtle.left(by: 60)

turtle.forward(steps: 60)
turtle.left(by: 60)

turtle.forward(steps: 60)
turtle.left(by: 60)

turtle.forward(steps: 60)
turtle.left(by: 60)

turtle.forward(steps: 60)
turtle.left(by: 60)

// Draw a polygon with "n" sides
func drawPolygon(withSides n: Int, withLength l: Int) {
    
    let exteriorAngle: Degrees = 360.0 / Degrees(n)
    for _ in 1...n {
        turtle.forward(steps: l)
        turtle.left(by: exteriorAngle)
    }
    
}

turtle.penUp()
turtle.setPosition(to: Point(x: 300, y: 200))
turtle.penDown()

// Draw 10 pentagons
//for _ in 1...10 {
    
 //   drawPolygon(withSides: 5, withLength: 75)
    //turtle.left(by: 360.0 / 10.00)
    
//}

turtle.penUp()
turtle.forward(steps: 70)
turtle.penDown()

for _ in 1...23 {
    
    drawPolygon(withSides: 3, withLength: 93)
    turtle.left(by: 360.0/23.00)
    
}

turtle.penUp()
turtle.forward(steps: 170)
turtle.penDown()

for _ in 1...18 {
    
    drawPolygon(withSides: 8, withLength: 26)
    turtle.left(by: 360.0/18.00)
}

//turtle.penUp()
//turtle.forward(steps: )
//turtle.penDown()


turtle.penUp()
turtle.setPosition(to: Point(x: 144, y: 185))
turtle.forward(steps: 170)
turtle.penDown()

for _ in 1...18 {
    
    drawPolygon(withSides: 12, withLength: 26)
    turtle.left(by: 360.0/18.00)
}


turtle.penUp()
turtle.setPosition(to: Point(x: 25, y: 36))
turtle.forward(steps: 170)
turtle.penDown()

for _ in 1...14 {
    
    drawPolygon(withSides: 3, withLength: 4)
    turtle.left(by: 360.0/14.00)
}

// Turn off high performance mode
canvas.highPerformance = false
turtle.left(by: 90)
