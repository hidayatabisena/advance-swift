import UIKit

// Contoh struct untuk perjalanan
struct Journey {
    let distance: Double // dalam kilometer
    let vehicleType: VehicleType
}

// Contoh enum untuk jenis kendaraan
enum VehicleType {
    case car
    case bus
    case bike
    case walk
    
    // Nilai emisi untuk masing-masing jenis kendaraan (dalam gram per kilometer)
    // Nilai ini adalah nilai contoh, ini nanti harus diganti dengan data yang akurat
    var emissionValue: Double {
        switch self {
        case .car:
            return 120 // contoh nilai, harus diganti dengan data asli
        case .bus:
            return 68 // contoh nilai, harus diganti dengan data asli
        case .bike, .walk:
            return 0 // bersepeda dan berjalan kaki biasanya dianggap tidak menimbulkan emisi
        }
    }
}

// Fungsi untuk menghitung emisi karbon
func calculateCarbonEmission(for journey: Journey) -> Double {
    return journey.distance * journey.vehicleType.emissionValue
}

// Contoh penggunaan
let exampleJourney = Journey(distance: 10.0, vehicleType: .car)
let calculatedEmission = calculateCarbonEmission(for: exampleJourney)
print("Estimated carbon emission for the journey is \(calculatedEmission) grams.")

