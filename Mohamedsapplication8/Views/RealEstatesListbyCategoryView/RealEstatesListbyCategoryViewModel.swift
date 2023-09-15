import Foundation
import SwiftUI

class RealEstatesListbyCategoryViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var formsearchempty: String = ""
}
