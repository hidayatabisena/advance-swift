import UIKit

// Step 1: Membuat Protocol untuk kemampuan berbicara
protocol Speakable {
    func speak() -> String
}

// Step 2: Kelas Hewan yang mengadopsi protocol Speakable
class Animal: Speakable {
    var name: String

    init(name: String) {
        self.name = name
    }

    func speak() -> String {
        return "..."
    }
}

// Step 3: Membuat Kelas Hewan-hewan Lucu
// Kelas Kucing yang mewarisi dari kelas Animal
class Cat: Animal {
    override func speak() -> String {
        return "Meow!"
    }
}

// Kelas Anjing yang mewarisi dari kelas Animal
class Dog: Animal {
    override func speak() -> String {
        return "Woof!"
    }
}

// Kelas Bebek yang mewarisi dari kelas Animal
class Duck: Animal {
    override func speak() -> String {
        return "Quack!"
    }
}

// Step 4: Menggunakan Hewan-hewan dalam permainan
// Membuat instance hewan-hewan lucu
let garfield = Cat(name: "Garfield")
let doggy = Dog(name: "Doggy")
let donald = Duck(name: "Donald")

// Menggunakan method speak() dari protocol Speakable
print(garfield.name + ": " + garfield.speak()) // Output: "Garfield: Meow!"
print(doggy.name + ": " + doggy.speak()) // Output: "Doggy: Woof!"
print(donald.name + ": " + donald.speak()) // Output: "Donald: Quack!"

