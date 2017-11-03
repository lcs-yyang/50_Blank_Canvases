//: [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Creat the regular white dot on canvas by using loop
for x in stride(from: 25, through: 475, by: 50) {
    canvas.defaultBorderWidth = 5
    for y in stride(from: 475, through: 25, by: -50){
        canvas.fillColor = Color.white
        canvas.drawEllipse(centreX: x, centreY: y, width: 30, height: 30)
        
        
        
        // Creating black circles
        let randomValue = random(from: 1, toButNotIncluding: 5)
        canvas.fillColor = Color.black
        if randomValue == 1 {
            
            canvas.drawEllipse(centreX: x+15, centreY: y, width: 30, height: 30)
        }
        
        
        if randomValue == 2 {
            
            canvas.drawEllipse(centreX: x-15, centreY: y, width: 30, height: 30)
        }
        
        
        if randomValue == 3 {
            
            canvas.drawEllipse(centreX: x, centreY: y+15, width: 30, height: 30)
        }
        
        
        if randomValue == 4 {
            
            canvas.drawEllipse(centreX: x, centreY: y-15, width: 30, height: 30)
        }
        }
     }






/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView


