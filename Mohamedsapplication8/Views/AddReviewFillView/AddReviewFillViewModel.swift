import Foundation
import SwiftUI

class AddReviewFillViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var ratingbarRating: Int = 0
    @Published var isAddReviewSuccessViewShow: Bool = false
}
