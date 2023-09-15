import Foundation
import SwiftUI

class ExtraInformationViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var priceText: String = ""
    @Published var formvaluefillText: String = ""
    @Published var isExtraInformationSuccessViewShow: Bool = false
}
