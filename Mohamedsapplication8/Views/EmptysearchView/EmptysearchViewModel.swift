import Foundation
import SwiftUI

class EmptysearchViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var formsearch: String = ""
    @Published var isFilterFullViewShow: Bool = false
}
