import Cocoa

// Gold Challenges

// map
let precintPopulations = [1244, 2021, 2157]

let projectedPopulation = precintPopulations.map {$0 * 2}
projectedPopulation


// filter
let bigProjections = projectedPopulation.filter {$0 > 4000}
bigProjections


// reduce
let totalProjection = projectedPopulation.reduce(0) {$0 + $1}
totalProjection