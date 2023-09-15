import Foundation
import SwiftUI

class SummaryViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isSummaryChangePaymentViewShow: Bool = false
}
