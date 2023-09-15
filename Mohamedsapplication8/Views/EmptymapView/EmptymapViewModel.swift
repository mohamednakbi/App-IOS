import Foundation
import SwiftUI

class EmptymapViewModel: ObservableObject {
    @Published var countryPicker1: String = "Option 1"
    @Published var countryPicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
}
