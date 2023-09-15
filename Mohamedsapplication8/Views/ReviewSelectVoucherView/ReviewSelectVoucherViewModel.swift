import Foundation
import SwiftUI

class ReviewSelectVoucherViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var languageText: String = ""
    @Binding var isOpen: Bool

    init(_isOpen: Binding<Bool>) {
        self._isOpen = _isOpen
    }
}
