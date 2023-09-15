import Foundation
import SwiftUI

class PaymentMastercardViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var nameText: String = ""
    @Published var cardnumberText: String = ""
    @Published var cvvText: String = ""
    @Published var isShowDatePicker: Bool = false
    @Published var scrollviewdate: Date = .init()
}
