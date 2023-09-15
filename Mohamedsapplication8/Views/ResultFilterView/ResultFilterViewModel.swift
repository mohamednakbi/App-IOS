import Foundation
import SwiftUI

class ResultFilterViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var formsearch: String = ""
}
