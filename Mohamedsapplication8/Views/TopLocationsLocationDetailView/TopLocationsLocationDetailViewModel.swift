import Foundation
import SwiftUI

class TopLocationsLocationDetailViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var formsearch: String = ""
}
