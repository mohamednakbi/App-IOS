import Foundation
import SwiftUI

class TransactionTabContainerViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var tabLayoutList: [String] = ["TextSix", "TextSeven", "TextEight"]
    @Published var selectedLayoutIndex: Int = 0
}
