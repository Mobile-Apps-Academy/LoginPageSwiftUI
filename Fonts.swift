//
// Created By: Mobile Apps Academy
// Subscribe : https://www.youtube.com/@MobileAppsAcademy?sub_confirmation=1
// Medium Blob : https://medium.com/@mobileappsacademy
// LinkedIn : https://www.linkedin.com/company/mobile-apps-academy
// Twitter : https://twitter.com/MobileAppsAcdmy
// Lisence : https://github.com/Mobile-Apps-Academy/MobileAppsAcademyLicense/blob/main/LICENSE.txt
//


import Foundation
import SwiftUI

func GilroyFont(isBold: Bool = false, size: CGFloat) -> Font {
    if isBold {
        return Font.custom("Gilroy-ExtraBold", size: size)
    } else {
        return Font.custom("Gilroy-Light", size: size)
    }
}
