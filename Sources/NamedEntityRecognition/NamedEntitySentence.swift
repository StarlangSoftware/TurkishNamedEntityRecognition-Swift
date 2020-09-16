//
//  File.swift
//  
//
//  Created by Olcay Taner YILDIZ on 15.09.2020.
//

import Foundation
import Corpus

public class NamedEntitySentence : Sentence{
    
    public override init(){
        super.init()
    }

    /**
    Another constructor of NamedEntitySentence. It takes input a named entity annotated sentence in string
    form, divides the sentence with respect to space and sets the tagged words with respect to their tags.

    - Parameter sentence : Named Entity annotated sentence in string form
    */
    public override init(sentence: String){
        var namedEntityType : NamedEntityType = NamedEntityType.NONE
        var candidate : String
        super.init()
        self.words = []
        let wordArray : [String] = sentence.split(separator: " ").map(String.init)
        for word in wordArray{
            if word.count != 0{
                if word != "<b_enamex"{
                    if word.starts(with: "TYPE=\""){
                        let typeIndexEnd = word.lastIndex(of: "\"")
                        if typeIndexEnd != nil{
                            let entityType = String(word[word.index(after: word.firstIndex(of: "\"")!)..<word.lastIndex(of: "\"")!])
                            namedEntityType = NamedEntityTypeStatic.getNamedEntityType(entityType: entityType)
                        }
                        if word.contains("e_enamex>"){
                            let candidate = String(word[word.index(after: word.firstIndex(of: ">")!)..<word.lastIndex(of: "<")!])
                            if candidate.count != 0{
                                self.words.append(NamedEntityWord(name: candidate, namedEntityType: namedEntityType))
                            }
                            namedEntityType = NamedEntityType.NONE
                        } else {
                            candidate = String(word[word.index(after: word.firstIndex(of: ">")!)...])
                            if candidate.count != 0{
                                self.words.append(NamedEntityWord(name: candidate, namedEntityType: namedEntityType))
                            }
                        }
                    } else {
                        if word.contains("e_enamex>"){
                            candidate = String(word[..<word.firstIndex(of: "<")!])
                            if candidate.count != 0{
                                self.words.append(NamedEntityWord(name: candidate, namedEntityType: namedEntityType))
                            }
                            namedEntityType = NamedEntityType.NONE
                        } else {
                            if word.count != 0{
                                self.words.append(NamedEntityWord(name: word, namedEntityType: namedEntityType))
                            }
                        }
                    }
                }
            }
        }
    }

}
