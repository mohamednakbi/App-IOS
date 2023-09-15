import Foundation
import SwiftUI

class PropertyDetailsViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var formlayoutrangePicker1: String = "Option 1"
    @Published var formlayoutrangePicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
    @Published var ratingbarRating: Int = 0
    @Published var isLocationDistanceViewShow: Bool = false
}
