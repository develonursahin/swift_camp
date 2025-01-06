//
//  main.swift
//  ProtocolSwiftProject
//
//  Created by Onur Şahin on 6.01.2025.
//


import Foundation

protocol Running {
    func myRun()
}

class Animal {
    func test() {
        print("test")
    }
}

class Dog : Running {
    func myRun() {
        print("running")
    }
}

let barley = Dog()
barley.myRun()

class Cat : Animal, Running {
    func myRun() {
        print("running")
    }
}

let cat = Cat()
cat.test()
cat.myRun()

class Turtle : Animal {
    
}

let leonardo = Turtle()


struct Bird : Running {
    func myRun() {
        print("running")
    }
}

let tweety = Bird()
tweety.myRun()
