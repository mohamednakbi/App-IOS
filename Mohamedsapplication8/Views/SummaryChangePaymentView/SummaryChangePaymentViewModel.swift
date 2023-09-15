import Foundation
import SwiftUI

class SummaryChangePaymentViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Binding var isOpen: Bool
    @Published var isSummarySuccessViewShow: Bool = false

    init(_isOpen: Binding<Bool>) {
        self._isOpen = _isOpen
    }
}
