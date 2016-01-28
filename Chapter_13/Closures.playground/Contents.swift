import Cocoa

var volunteerCounts = [1, 3, 40, 32, 2, 53, 77, 13]

func sortAscending(i: Int, j: Int) -> Bool {
    return i < j
}

let ascendingSort = volunteerCounts.sort(sortAscending)

let closureSyntax = volunteerCounts.sort({
    (i: Int, j: Int) -> Bool in
    return i < j
})

let typeInference = volunteerCounts.sort({i, j in i < j})

let inlineClosure = volunteerCounts.sort {$0 < $1}


// functions as return types
func makeTownGrand() -> (Int, Int) -> Int {
    func buildRoads(lightsToAdd: Int, toLights: Int) -> Int {
        return toLights + lightsToAdd
    }
    
    return buildRoads
}

var stopLights = 4
let townPlan = makeTownGrand()

stopLights = townPlan(4, stopLights)
print("My town has \(stopLights) stoplights")


// functions as arguments
func makeTownGrand(budget: Int, condition: Int -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(lightsToAdd: Int, toLights: Int) -> Int {
            return toLights + lightsToAdd
        }
        return buildRoads
    } else {
        return nil
    }
}

func evaluateBudget(budget: Int) -> Bool {
    return budget > 10000
}

var lights = 4

if let townPlan = makeTownGrand(1000, condition: evaluateBudget) {
    lights = townPlan(4, lights)
}

if let newTownPlan = makeTownGrand(10500, condition: evaluateBudget) {
    lights = newTownPlan(4, lights)
}

print("My town has \(lights) stoplights")


// closure capture values
func makeGrowthTracker(forGrowth growth: Int) -> () -> Int {
    var totalGrowth = 0
    
    func growthTracker() -> Int {
        totalGrowth += growth
        return totalGrowth
    }
    return growthTracker
}

var currentPopulation = 5422
let growBy500 = makeGrowthTracker(forGrowth: 500)
growBy500()
growBy500()
growBy500()
currentPopulation += growBy500()

// closures are reference types
let anotherGrowBy500 = growBy500
anotherGrowBy500()

var someOtherPopulation = 4061981
let growBy10000 = makeGrowthTracker(forGrowth: 10000)
someOtherPopulation += growBy10000()
currentPopulation

// map
let precintPopulations = [1244, 2021, 2157]

let projectedPopulation = precintPopulations.map {
    (population: Int) -> Int in
    return population * 2
}

projectedPopulation


// filter
let bigProjections = projectedPopulation.filter {
    (projection: Int) -> Bool in
    return projection > 4000
}

bigProjections


// reduce
let totalProjection = projectedPopulation.reduce(0) {
    (accumulatedProjection: Int, precintProjection: Int) -> Int in
    return accumulatedProjection + precintProjection
}

totalProjection