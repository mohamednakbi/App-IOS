import Foundation
import SwiftUI

class FormDetailViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var formpasswordText: String = ""
}
