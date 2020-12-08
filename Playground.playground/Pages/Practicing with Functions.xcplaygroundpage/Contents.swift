//: [Previous](@previous) / [Next](@next)
//: # Practicing with Functions
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

// Move to middle of the screen
//turtle.penUp()
//turtle.setPosition(to: Point(x: canvas.width / 2, y: canvas.height / 2))
//turtle.penDown()
//turtle.drawSelf()

// Draw a filled polygon
//turtle.setFillColor(to: Color(hue: 280, saturation: 100, brightness: 50, alpha: 100))
//turtle.beginFill()
//drawPolygon(withSides: 7, withLength: 50)
//turtle.endFill()


// Make a scene
//sky
turtle.penUp()
turtle.setPosition(to: Point(x: 0, y: 0))
turtle.penDown()

turtle.setFillColor(to: Color(hue: 210, saturation: 100, brightness: 65, alpha: 100))
turtle.beginFill()
turtle.forward(steps: 500)
turtle.left(by: 90)

turtle.forward(steps: 500)
turtle.left(by: 90)

turtle.forward(steps: 500)
turtle.left(by: 90)

turtle.forward(steps: 500)
turtle.left(by: 90)

turtle.endFill()
//house
turtle.penUp()
turtle.setPosition(to: Point(x:80, y: 0))
turtle.penDown()

turtle.setFillColor(to:Color(hue: 75, saturation: 100, brightness: 100, alpha: 100) )
turtle.beginFill()
turtle.forward(steps: 170)
turtle.left(by: 90)

turtle.forward(steps: 200)
turtle.left(by: 90)

turtle.forward(steps: 170)
turtle.left(by: 90)

turtle.forward(steps: 200)
turtle.left(by: 90)

turtle.endFill()

//house roof
turtle.penUp()
turtle.setPosition(to: Point(x:0, y: 200))
turtle.penDown()

turtle.setFillColor(to:Color(hue: 255, saturation: 100, brightness: 100, alpha: 100) )
turtle.beginFill()
turtle.forward(steps:250 )
turtle.left(by: 110)
turtle.forward(steps: 250)
turtle.left(by: 140)
turtle.forward(steps: 250)
turtle.left(by: 110)

turtle.endFill()

//House window
turtle.penUp()
turtle.setPosition(to: Point(x:90, y: 30))
turtle.penDown()

turtle.setFillColor(to:Color(hue: 175, saturation: 20, brightness: 100, alpha: 100) )
turtle.beginFill()

turtle.forward(steps: 100)
turtle.left(by: 90)
turtle.forward(steps: 100)
turtle.left(by: 90)
turtle.forward(steps: 100)
turtle.left(by: 90)
turtle.forward(steps: 100)
turtle.left(by: 90)

turtle.endFill()

turtle.penUp()
turtle.setPosition(to: Point(x:140, y: 30))
turtle.penDown()
turtle.drawSelf()

turtle.setFillColor(to:Color(hue: 130, saturation: 100, brightness: 80, alpha: 100) )
turtle.beginFill()

turtle.forward(steps: 3)
turtle.left(by: 90)
turtle.forward(steps: 100)
turtle.left(by: 90)
turtle.forward(steps: 3)
turtle.left(by: 90)
turtle.forward(steps: 100)
turtle.left(by: 90)

turtle.endFill()

turtle.penUp()
turtle.setPosition(to: Point(x:90, y: 80))
turtle.penDown()
turtle.drawSelf()

turtle.setFillColor(to:Color(hue: 130, saturation: 100, brightness: 80, alpha: 100) )
turtle.beginFill()

turtle.forward(steps: 100)
turtle.left(by: 90)
turtle.forward(steps: 3)
turtle.left(by: 90)
turtle.forward(steps: 100)
turtle.left(by: 90)
turtle.forward(steps: 3)
turtle.left(by: 90)

turtle.endFill()


//sun
turtle.penUp()
turtle.setPosition(to: Point(x:400, y: 400))
turtle.penDown()

turtle.setFillColor(to:Color(hue: 10, saturation: 100, brightness: 100, alpha: 100) )
turtle.beginFill()
for _ in 1...28 {
    
    drawPolygon(withSides: 15, withLength: 10)
    turtle.left(by: 360.0 / 28.00)
    
}

turtle.endFill()

//flower
turtle.penUp()
turtle.setPosition(to: Point(x:400, y: 100))
turtle.penDown()

turtle.setFillColor(to:Color(hue: 30, saturation: 80, brightness: 100, alpha: 100) )
turtle.beginFill()
for _ in 1...13 {
    
    drawPolygon(withSides: 8, withLength: 8)
    turtle.left(by: 360.0 / 13.00)
    
}

turtle.endFill()


turtle.penUp()
turtle.setPosition(to: Point(x:400, y: 0))
turtle.penDown()

turtle.setFillColor(to:Color(hue: 120, saturation: 100, brightness: 100, alpha: 100) )
turtle.beginFill()

turtle.forward(steps: 5)
turtle.left(by: 90)
turtle.forward(steps: 80)
turtle.left(by: 90)
turtle.forward(steps: 5)
turtle.left(by: 90)
turtle.forward(steps: 80)
turtle.left(by: 90)

turtle.endFill()


func drawFlower(startAtX: Int, whatHue: Int) {

    turtle.penUp()
    turtle.setPosition(to: Point(x:startAtX, y: 100))
    turtle.penDown()

    turtle.setFillColor(to:Color(hue: whatHue, saturation: 80, brightness: 100, alpha: 100) )
    turtle.beginFill()
    for _ in 1...13 {
        
        drawPolygon(withSides: 8, withLength: 8)
        turtle.left(by: 360.0 / 13.00)
        
    }

    turtle.endFill()

    // Stem
    turtle.penUp()
    turtle.setPosition(to: Point(x:startAtX, y: 0))
    turtle.penDown()

    turtle.setFillColor(to:Color(hue: 120, saturation: 100, brightness: 100, alpha: 100) )
    turtle.beginFill()

    turtle.forward(steps: 5)
    turtle.left(by: 90)
    turtle.forward(steps: 80)
    turtle.left(by: 90)
    turtle.forward(steps: 5)
    turtle.left(by: 90)
    turtle.forward(steps: 80)
    turtle.left(by: 90)

    turtle.endFill()
    
}

//flower 2
drawFlower(startAtX: 450, whatHue: 40)

//flower 3
drawFlower(startAtX: 350, whatHue: 20)


// Mr. Gordon's flower
drawFlower(startAtX: 500, whatHue: 280)


//flower 4
drawFlower(startAtX: 300, whatHue: 10)


//flower 5
drawFlower(startAtX: 20, whatHue: 60)


canvas.highPerformance = false
turtle.penUp()

// Draw a filled polygon that is complementary in colour
//turtle.setFillColor(to: Color(hue: 280 - 180, saturation: 100, brightness: 50, alpha: 100))
//turtle.beginFill()
//drawPolygon(withSides: 7, withLength: 50)
//turtle.endFill()


