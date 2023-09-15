import Foundation
import SwiftUI

class NotificationListTabContainerViewModel: ObservableObject {
    @Published var tabButtonList: [String] = ["Text", "TextOne"]
    @Published var selectedButtonIndex: Int = 0
}
