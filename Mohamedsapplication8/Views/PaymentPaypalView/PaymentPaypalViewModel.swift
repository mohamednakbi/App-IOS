import Foundation
import SwiftUI

class PaymentPaypalViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var nameText: String = ""
}
