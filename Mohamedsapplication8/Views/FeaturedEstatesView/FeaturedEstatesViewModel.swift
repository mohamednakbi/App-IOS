import Foundation
import SwiftUI

class FeaturedEstatesViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var formsearchempty: String = ""
}
