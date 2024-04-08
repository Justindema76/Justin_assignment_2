//created structs
//create a Location struct with x and y coordinates (as we did with the pizza example)
struct Location {
    var x: Double
    var y: Double
}

struct Restaurant {
    var name: String
    var location: Location
}
struct Customer {
    var name: String
    var email: String
    var phoneNumber: String
    var acceptNewsLetter: Bool
    var customerlocation: Location
}

//  create restuarant delivery range
let deliveryRange = 2.5

// create 2 store locations range - locations and names of the restaurants
let restaurant1Location = Location(x: 3.0, y: 3.0)
let restaurant2Location = Location(x: 8.0, y: 8.0)


// create an array of customers (Customer, at least 10) - Array of customer info

let customers = [
    Customer(name: "Ironman", email: "Ironman@avengers.com", phoneNumber: "555-1234", acceptNewsLetter: true, customerlocation: Location(x: 3.0, y: 3.5)),
    Customer(name: "Captain America", email: "captainamerican@avengers.com", phoneNumber: "555-2345", acceptNewsLetter: false, customerlocation: Location(x: 7.0, y: 6.0)),
    Customer(name: "Hulk", email: "Hulk@avengers.com", phoneNumber: "555-4321", acceptNewsLetter: true, customerlocation: Location(x: 4.0, y: 4.4)),
    Customer(name: "Thor", email: "Thor@avengers.com", phoneNumber: "555-1111", acceptNewsLetter: false, customerlocation: Location(x: 5.0, y: 5.0)),
    Customer(name: "BlackWidow", email: "BlackWidow@avengers.com", phoneNumber: "555-1235", acceptNewsLetter: true, customerlocation: Location(x: 3.9, y: 5.5)),
    Customer(name: "Vision", email: "Vision@avengers.com", phoneNumber: "555-2346", acceptNewsLetter: true, customerlocation: Location(x: 7.0, y: 7.0)),
    Customer(name: "Hawkeye", email: "Hawkeye@avengers.com", phoneNumber: "555-3321", acceptNewsLetter: true, customerlocation: Location(x: 2.0, y: 2.4)),
    Customer(name: "Falcon", email: "Falcon@avengers.com", phoneNumber: "555-1112", acceptNewsLetter: false, customerlocation: Location(x: 5.7, y: 3.0)),
    Customer(name: "Spiderman", email: "Spiderman@avengers.com", phoneNumber: "555-3521", acceptNewsLetter: true, customerlocation: Location(x: 2.0, y: 3.4)),
    Customer(name: "Dr Strange", email: "Strange@avengers.com", phoneNumber: "555-1110", acceptNewsLetter: false, customerlocation: Location(x: 8.7, y: 8.0)),
]
//func to detemine distance of delivery - distance formula from the pizza example
func distance(from source: Location, to target: Location) -> Double {
    let distanceX = source.x - target.x
    let distanceY = source.y - target.y
    return (distanceX * distanceX + distanceY * distanceY).squareRoot()
}
// write a function that takes in a single store location and the collection of customers and prints the email addresses of customers that are within the storeRange - this func finds customers in range of delivery for  Location 1
func findCustomersWithinRange(for customers: [Customer], deliveryLocation: Location, within deliveryRange: Double) -> [Customer] {
    var customersInRange: [Customer] = []
    for customer in customers {
        let distanceToCustomer = distance(from: restaurant1Location, to: customer.customerlocation)
        if distanceToCustomer <= deliveryRange {
            customersInRange.append(customer)
        }
    }
    return customersInRange
}

let customersInRange = findCustomersWithinRange(for: customers, deliveryLocation: restaurant1Location, within: deliveryRange)
print("Customers within delivery range of Restuarant 1:")
for customer in customersInRange {
    print("Name: \(customer.name) Email \(customer.email)")
}

