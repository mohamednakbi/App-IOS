import Foundation
import SwiftUI

class SearchResultViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var formsearch: String = ""
    @Published var isFilterFullViewShow: Bool = false
}
