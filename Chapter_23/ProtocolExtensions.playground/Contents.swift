import Cocoa

protocol ExerciseType {
    var name: String {get }
    var caloriesBurned: Double { get }
    var minutes: Double { get }
}

struct EllipticalTrainer: ExerciseType {
    let name = "Elliptical Machine"
    let caloriesBurned: Double
    let minutes: Double
}

struct Treadmill: ExerciseType {
    let name = "Treadmill"
    let caloriesBurned: Double
    let minutes: Double
    let distanceInMiles: Double
}

let ellipticalWorkout = EllipticalTrainer(caloriesBurned: 335, minutes: 30)

let runningWorkout = Treadmill(caloriesBurned: 350, minutes: 25, distanceInMiles: 4.2)
