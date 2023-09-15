import Foundation
import SwiftUI

class AddReviewSuccessViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Binding var isOpen: Bool

    init(_isOpen: Binding<Bool>) {
        self._isOpen = _isOpen
    }
}
