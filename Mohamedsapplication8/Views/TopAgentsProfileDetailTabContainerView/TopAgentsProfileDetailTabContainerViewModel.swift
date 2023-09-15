import Foundation
import SwiftUI

class TopAgentsProfileDetailTabContainerViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var ratingbarRating: Int = 0
    @Published var tabButtonList: [String] = ["TextFive", "TextSix"]
    @Published var selectedButtonIndex: Int = 0
}
