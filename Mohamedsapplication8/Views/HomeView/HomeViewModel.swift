import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var countryPicker1: String = "Option 1"
    @Published var countryPicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
    @Published var formsearchempty: String = ""
    @Published var isSelectLocationViewShow: Bool = false
}
