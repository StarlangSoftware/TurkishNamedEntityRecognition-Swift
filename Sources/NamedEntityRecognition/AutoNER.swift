//
//  File.swift
//  
//
//  Created by Olcay Taner YILDIZ on 15.09.2020.
//

import Foundation

class AutoNER{
    
    private var personGazetteer: Gazetteer
    private var organizationGazetteer: Gazetteer
    private var locationGazetteer: Gazetteer

    /**
    Constructor for creating Person, Organization, and Location gazetteers in automatic Named Entity Recognition.
    */
    public init(){
        self.personGazetteer = Gazetteer(name: "PERSON", fileName: "gazetteer-person.txt")
        self.organizationGazetteer = Gazetteer(name: "ORGANIZATION", fileName: "gazetteer-organization.txt")
        self.locationGazetteer = Gazetteer(name: "LOCATION", fileName: "gazetteer-location.txt")
    }

}
