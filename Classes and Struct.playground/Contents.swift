//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


struct Home {
    var numberOfBedrooms : Int
    var numberOfBathrooms : Int
    var numberOfFloors : Int
    var address : String
    var kitchen : Bool
    
    func printInfo() {
        print("This home has \(self.numberOfBedrooms) bedrooms, \(self.numberOfBathrooms) bathrooms, \(self.numberOfFloors) stories, and the address is \(self.address)")
    }
}
var myHouse = Home(numberOfBedrooms: 3, numberOfBathrooms: 3, numberOfFloors: 3, address: "1927 blahblah", kitchen: true)

myHouse.printInfo()



class MattsHome {
    var homeOwner: String
    var ownerAge: Int
    var ownerMarital: Bool
    var house: Home
    init(homeOwner: String, ownerAge: Int, ownerMarital: Bool, house: Home) {
        self.homeOwner = homeOwner
        self.ownerAge = ownerAge
        self.ownerMarital = ownerMarital
        self.house = house
        print("Matt's house info: \(self.house)")
        
    }
}

var hey = MattsHome(homeOwner: "Matt", ownerAge: 27, ownerMarital: true, house: myHouse)

