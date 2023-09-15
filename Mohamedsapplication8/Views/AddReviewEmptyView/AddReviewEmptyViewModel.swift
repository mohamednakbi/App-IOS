import Foundation
import SwiftUI

class AddReviewEmptyViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var ratingbarRating: Int = 0
    @Published var formtextareaText: String = ""
}
