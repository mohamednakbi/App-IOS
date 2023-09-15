import Foundation
import SwiftUI

class ReviewEmptyViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var formdateemptyText: String = ""
    @Published var formdateemptyoneText: String = ""
    @Published var formtextemptyText: String = ""
    @Published var isReviewSelectVoucherViewShow: Bool = false
}
