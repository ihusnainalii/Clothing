// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import SwiftUI

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum AppCatalog {
  internal enum Assets {
    internal static let _104 = ImageAsset(name: "104")
    internal static let accentColor = ColorAsset(name: "AccentColor")
    internal static let changeImage = ImageAsset(name: "Change Image")
    internal static let image1 = ImageAsset(name: "Image 1")
    internal static let image2 = ImageAsset(name: "Image 2")
    internal static let image3 = ImageAsset(name: "Image 3")
    internal static let image4 = ImageAsset(name: "Image 4")
    internal static let image = ImageAsset(name: "Image")
    internal static let plusCircle = ImageAsset(name: "Plus-circle")
    internal static let rectangle4174 = ImageAsset(name: "Rectangle 4174")
    internal static let shade = ImageAsset(name: "Shade")
    internal static let shoppingCategories = ImageAsset(name: "Shopping-categories")
    internal static let user = ImageAsset(name: "User")
    internal static let beg = ImageAsset(name: "beg")
    internal static let bell = ImageAsset(name: "bell")
    internal static let divider = ImageAsset(name: "divider")
    internal static let home = ImageAsset(name: "home")
    internal static let saleItem = ImageAsset(name: "saleItem")
    internal static let search = ImageAsset(name: "search")
  }
  internal enum Colors {
    internal static let backgorund = ColorAsset(name: "backgorund")
    internal static let darkgrey = ColorAsset(name: "darkgrey")
    internal static let greyText = ColorAsset(name: "greyText")
    internal static let searchBg = ColorAsset(name: "searchBg")
    internal static let yellow = ColorAsset(name: "yellow")
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal struct ColorAsset {
  let name: String

  internal var color: Color {
    Color(self)
  }
}

internal extension Color {
  /// Creates a named color.
  /// - Parameter asset: the color resource to lookup.
  init(_ asset: ColorAsset) {
    let bundle = Bundle(for: BundleToken.self)
    self.init(asset.name, bundle: bundle)
  }
}

internal struct ImageAsset {
  let name: String

  internal var image: Image {
    Image(name)
  }
}

internal extension Image {
  /// Creates a labeled image that you can use as content for controls.
  /// - Parameter asset: the image resource to lookup.
  init(_ asset: ImageAsset) {
    let bundle = Bundle(for: BundleToken.self)
    self.init(asset.name, bundle: bundle)
  }
}

private final class BundleToken {}
