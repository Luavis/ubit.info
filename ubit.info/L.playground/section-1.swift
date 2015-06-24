// Playground - noun: a place where people can play

import Cocoa

class Person {
  var residence: Residence?
}

class Residence {
  var numberOfRooms = 1
}

var person = Person()
var room = person.residence!.numberOfRoom
