import Foundation
import SwiftUI

class EditProfileViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var usernameText: String = ""
    @Published var phonenumberText: String = ""
    @Published var emailPicker1: String = "Option 1"
    @Published var emailPicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
}
