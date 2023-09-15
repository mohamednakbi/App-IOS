import Foundation
import SwiftUI

class FilterFullViewModel: ObservableObject {
    @Published var formlocation: String = ""
    @Binding var isOpen: Bool

    init(_isOpen: Binding<Bool>) {
        self._isOpen = _isOpen
    }
}
