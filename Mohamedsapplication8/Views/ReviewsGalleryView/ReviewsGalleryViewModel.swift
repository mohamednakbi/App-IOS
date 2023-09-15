import Foundation
import SwiftUI

class ReviewsGalleryViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var ratingbarRating: Int = 0
}
