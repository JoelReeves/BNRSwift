import Cocoa

protocol ExerciseType: CustomStringConvertible {
    var name: String {get }
    var caloriesBurned: Double { get }
    var minutes: Double { get }
}

extension ExerciseType {
    var caloriesBurnedPerMinute: Double {
        return caloriesBurned / minutes
    }
}

extension ExerciseType {
    var description: String {
        return "Exercise(\(name), burned \(caloriesBurned) calories in \(minutes) minutes"
    }
}

extension ExerciseType {
    var title: String {
        return "\(name) - \(minutes) minutes"
    }
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

extension Treadmill {
    var description: String {
        return "Treadmill(\(caloriesBurned) calories and \(distanceInMiles) miles in \(minutes) minutes"
    }
}

let ellipticalWorkout = EllipticalTrainer(caloriesBurned: 335, minutes: 30)

let runningWorkout = Treadmill(caloriesBurned: 350, minutes: 25, distanceInMiles: 4.2)


print(ellipticalWorkout.caloriesBurnedPerMinute)
print(runningWorkout.caloriesBurnedPerMinute)


extension SequenceType where Generator.Element == ExerciseType {
    func totalCaloriesBurned() -> Double {
        var total: Double = 0
        for exercise in self {
            total += exercise.caloriesBurned
        }
        return total
    }
}


let mondayWorkout: [ExerciseType] = [ellipticalWorkout, runningWorkout]
print(mondayWorkout.totalCaloriesBurned())


print(ellipticalWorkout)
print(runningWorkout)

for exercise in mondayWorkout {
    print(exercise.title)
}
