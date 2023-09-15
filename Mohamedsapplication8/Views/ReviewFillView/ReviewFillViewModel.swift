import Foundation
import SwiftUI

class ReviewFillViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var formdatefillText: String = ""
    @Published var formdatefilloneText: String = ""
    @Published var formtextfillText: String = ""
}
