# Shop Giants App

## Getting Started
- Move all the assets into the Assets folder

## Section 1
- in Main.storyboard, Go to your Table View attribute inspector, change Content to Static Cells
- Find Table View Section, check the inspector and try to rename the header
- Now go to your Table View Cell, change the Style to "Basic"

## Section 2
- Rename ViewController into CategoryVC
- Go to your Table View in Main.storyboard, change Table View Content to Dynamic Prototypes, set the Cells to 1
- Add numberOfSections, numberOfRowsInSection, and cellForRowAt

## Section 3
- Create Struct of Category
- Create dummy data with let categories = [Category]
- populate them to the tableView

## Section 4
- Now we go to TableView Cell in Main.storyboard, change the Style to "Subtitle"
- Populate Title, Image, and Subtitle data for the table
