## writeToText(fileName: String, textToWrite: String, clearTextBeforeWriting: Bool)

## readTextFile(fileName: String) -> String

## clearTextFile(fileName: String)

## getDocumentDirectory() -> String


WriteToText  -> func helps you to create  txt file if not exist

readTextFile -> func helps you to read txt file

clearTextFile -> func helps you to clear text file 

getDocumentDirectory - > func give you to  ios .documentDirectory 


Sample Code:

SwiftTxtFileUtil.writeToText(fileName: "blabla", textToWrite: "hellooText", clearTextBeforeWriting: false)
        print(SwiftTxtFileUtil.readTextFile(fileName: "blabla"))
        SwiftTxtFileUtil.clearTextFile(fileName: "blabla")
        print(SwiftTxtFileUtil.readTextFile(fileName: "blabla"))


