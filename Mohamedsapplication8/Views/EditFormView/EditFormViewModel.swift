import Foundation
import SwiftUI

class EditFormViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var formpasswordText: String = ""
    @Published var isEditSuccessViewShow: Bool = false
}
