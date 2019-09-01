//
//  SwiftTxtFileUtil.swift
//  Mertcan Bulut
//  Created by Winlentia on 26.08.2019.
//  Copyright © 2019 Winlentia. All rights reserved.
//

import UIKit



class TextUtil: NSObject {
    
    static let shared = TextUtil()
    
    private override init() {
        super.init()
    }
    

    func writeToText(fileName:String,textToWrite:String,clearTextBeforeWriting:Bool){
        let file = fileName + ".txt"
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            print(dir)
            
            let fileURL = dir.appendingPathComponent(file)
            print(fileURL)
            //writing
            do {
                if (clearTextBeforeWriting){
                    clearTextFile(fileName: fileName)
                }
                try textToWrite.write(to: fileURL, atomically: false, encoding: .utf8)
            }
            catch {/* error handling here */}
        }
        
    }
    
    func readTextFile(fileName:String) -> String{
        let file = fileName + ".txt"
        
        var textString = ""
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let fileURL = dir.appendingPathComponent(file)
            //reading
            do {
                textString = try String(contentsOf: fileURL, encoding: .utf8)
                
            }
            catch {/* error handling here */}
        }
        
        return textString
        
    }
    
    func clearTextFile(fileName:String){
        
        let file = fileName + ".txt"
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            let fileURL = dir.appendingPathComponent(file)
            print(fileURL)
            //writing
            do {
                try "".write(to: fileURL, atomically: false, encoding: .utf8)
            }
            catch {}
        }
    }
    
    func getDocumentDirectory() ->String {
        var filePath = ""
        
        // Fine documents directory on device
        let dirs : [String] = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.allDomainsMask, true)
        
        if dirs.count > 0 {
            let dir = dirs[0] //documents directory
            filePath = dir.appending("/")
            print("Local path = \(filePath)")
        } else {
            print("Could not find local directory to store file")
        }
        
        return filePath

    }
}







