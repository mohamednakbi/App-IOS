import Foundation
import SwiftUI

class PaymentPaypalTabContainerViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var tabWalletoptionList: [String] = ["TextTwo", "TextThree", "TextFour"]
    @Published var selectedWalletoptionIndex: Int = 0
}
