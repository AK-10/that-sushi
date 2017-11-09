//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try font.validate()
    try intern.validate()
  }
  
  /// This `R.color` struct is generated, and contains static references to 0 color palettes.
  struct color {
    fileprivate init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 2 files.
  struct file {
    /// Resource file `WawaSC-Regular.otf`.
    static let wawaSCRegularOtf = Rswift.FileResource(bundle: R.hostingBundle, name: "WawaSC-Regular", pathExtension: "otf")
    /// Resource file `sushis.csv`.
    static let sushisCsv = Rswift.FileResource(bundle: R.hostingBundle, name: "sushis", pathExtension: "csv")
    
    /// `bundle.url(forResource: "WawaSC-Regular", withExtension: "otf")`
    static func wawaSCRegularOtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.wawaSCRegularOtf
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "sushis", withExtension: "csv")`
    static func sushisCsv(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.sushisCsv
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 1 fonts.
  struct font: Rswift.Validatable {
    /// Font `DFWaWaSC-W5`.
    static let dFWaWaSCW5 = Rswift.FontResource(fontName: "DFWaWaSC-W5")
    
    /// `UIFont(name: "DFWaWaSC-W5", size: ...)`
    static func dFWaWaSCW5(size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: dFWaWaSCW5, size: size)
    }
    
    static func validate() throws {
      if R.font.dFWaWaSCW5(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'DFWaWaSC-W5' could not be loaded, is 'WawaSC-Regular.otf' added to the UIAppFonts array in this targets Info.plist?") }
    }
    
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 54 images.
  struct image {
    /// Image `ajiDetail`.
    static let ajiDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "ajiDetail")
    /// Image `aji`.
    static let aji = Rswift.ImageResource(bundle: R.hostingBundle, name: "aji")
    /// Image `anagoDetail`.
    static let anagoDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "anagoDetail")
    /// Image `anago`.
    static let anago = Rswift.ImageResource(bundle: R.hostingBundle, name: "anago")
    /// Image `back2home_btn`.
    static let back2home_btn = Rswift.ImageResource(bundle: R.hostingBundle, name: "back2home_btn")
    /// Image `backboard`.
    static let backboard = Rswift.ImageResource(bundle: R.hostingBundle, name: "backboard")
    /// Image `californiaDetail`.
    static let californiaDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "californiaDetail")
    /// Image `california`.
    static let california = Rswift.ImageResource(bundle: R.hostingBundle, name: "california")
    /// Image `camera_btn`.
    static let camera_btn = Rswift.ImageResource(bundle: R.hostingBundle, name: "camera_btn")
    /// Image `detail_btn`.
    static let detail_btn = Rswift.ImageResource(bundle: R.hostingBundle, name: "detail_btn")
    /// Image `ebiDetail`.
    static let ebiDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "ebiDetail")
    /// Image `ebi`.
    static let ebi = Rswift.ImageResource(bundle: R.hostingBundle, name: "ebi")
    /// Image `engawaDetail`.
    static let engawaDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "engawaDetail")
    /// Image `engawa`.
    static let engawa = Rswift.ImageResource(bundle: R.hostingBundle, name: "engawa")
    /// Image `hamachiDetail`.
    static let hamachiDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "hamachiDetail")
    /// Image `hamachi`.
    static let hamachi = Rswift.ImageResource(bundle: R.hostingBundle, name: "hamachi")
    /// Image `home_image`.
    static let home_image = Rswift.ImageResource(bundle: R.hostingBundle, name: "home_image")
    /// Image `hotateDetail`.
    static let hotateDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "hotateDetail")
    /// Image `hotate`.
    static let hotate = Rswift.ImageResource(bundle: R.hostingBundle, name: "hotate")
    /// Image `ikaDetail`.
    static let ikaDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "ikaDetail")
    /// Image `ika`.
    static let ika = Rswift.ImageResource(bundle: R.hostingBundle, name: "ika")
    /// Image `ikuraDetail`.
    static let ikuraDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "ikuraDetail")
    /// Image `ikura`.
    static let ikura = Rswift.ImageResource(bundle: R.hostingBundle, name: "ikura")
    /// Image `kappaDetail`.
    static let kappaDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "kappaDetail")
    /// Image `kappa`.
    static let kappa = Rswift.ImageResource(bundle: R.hostingBundle, name: "kappa")
    /// Image `kohadaDetail`.
    static let kohadaDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "kohadaDetail")
    /// Image `kohada`.
    static let kohada = Rswift.ImageResource(bundle: R.hostingBundle, name: "kohada")
    /// Image `library_btn`.
    static let library_btn = Rswift.ImageResource(bundle: R.hostingBundle, name: "library_btn")
    /// Image `maguroDetail`.
    static let maguroDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "maguroDetail")
    /// Image `maguro`.
    static let maguro = Rswift.ImageResource(bundle: R.hostingBundle, name: "maguro")
    /// Image `manaita`.
    static let manaita = Rswift.ImageResource(bundle: R.hostingBundle, name: "manaita")
    /// Image `name_ribbon`.
    static let name_ribbon = Rswift.ImageResource(bundle: R.hostingBundle, name: "name_ribbon")
    /// Image `nattoDetail`.
    static let nattoDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "nattoDetail")
    /// Image `natto`.
    static let natto = Rswift.ImageResource(bundle: R.hostingBundle, name: "natto")
    /// Image `oshinagaki`.
    static let oshinagaki = Rswift.ImageResource(bundle: R.hostingBundle, name: "oshinagaki")
    /// Image `retake_btn`.
    static let retake_btn = Rswift.ImageResource(bundle: R.hostingBundle, name: "retake_btn")
    /// Image `sabaDetail`.
    static let sabaDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "sabaDetail")
    /// Image `saba`.
    static let saba = Rswift.ImageResource(bundle: R.hostingBundle, name: "saba")
    /// Image `salmonDetail`.
    static let salmonDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "salmonDetail")
    /// Image `salmon`.
    static let salmon = Rswift.ImageResource(bundle: R.hostingBundle, name: "salmon")
    /// Image `sinboard_kanban`.
    static let sinboard_kanban = Rswift.ImageResource(bundle: R.hostingBundle, name: "sinboard_kanban")
    /// Image `splash`.
    static let splash = Rswift.ImageResource(bundle: R.hostingBundle, name: "splash")
    /// Image `syari`.
    static let syari = Rswift.ImageResource(bundle: R.hostingBundle, name: "syari")
    /// Image `tacoDetail`.
    static let tacoDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "tacoDetail")
    /// Image `taco`.
    static let taco = Rswift.ImageResource(bundle: R.hostingBundle, name: "taco")
    /// Image `taiDetail`.
    static let taiDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "taiDetail")
    /// Image `tai`.
    static let tai = Rswift.ImageResource(bundle: R.hostingBundle, name: "tai")
    /// Image `tamagoDetail`.
    static let tamagoDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "tamagoDetail")
    /// Image `tamago`.
    static let tamago = Rswift.ImageResource(bundle: R.hostingBundle, name: "tamago")
    /// Image `tsubugaiDetail`.
    static let tsubugaiDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "tsubugaiDetail")
    /// Image `tsubugai`.
    static let tsubugai = Rswift.ImageResource(bundle: R.hostingBundle, name: "tsubugai")
    /// Image `uniDetail`.
    static let uniDetail = Rswift.ImageResource(bundle: R.hostingBundle, name: "uniDetail")
    /// Image `uni`.
    static let uni = Rswift.ImageResource(bundle: R.hostingBundle, name: "uni")
    /// Image `wallpaper`.
    static let wallpaper = Rswift.ImageResource(bundle: R.hostingBundle, name: "wallpaper")
    
    /// `UIImage(named: "aji", bundle: ..., traitCollection: ...)`
    static func aji(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.aji, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "ajiDetail", bundle: ..., traitCollection: ...)`
    static func ajiDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.ajiDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "anago", bundle: ..., traitCollection: ...)`
    static func anago(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.anago, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "anagoDetail", bundle: ..., traitCollection: ...)`
    static func anagoDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.anagoDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "back2home_btn", bundle: ..., traitCollection: ...)`
    static func back2home_btn(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.back2home_btn, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "backboard", bundle: ..., traitCollection: ...)`
    static func backboard(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.backboard, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "california", bundle: ..., traitCollection: ...)`
    static func california(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.california, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "californiaDetail", bundle: ..., traitCollection: ...)`
    static func californiaDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.californiaDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "camera_btn", bundle: ..., traitCollection: ...)`
    static func camera_btn(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.camera_btn, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "detail_btn", bundle: ..., traitCollection: ...)`
    static func detail_btn(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.detail_btn, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "ebi", bundle: ..., traitCollection: ...)`
    static func ebi(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.ebi, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "ebiDetail", bundle: ..., traitCollection: ...)`
    static func ebiDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.ebiDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "engawa", bundle: ..., traitCollection: ...)`
    static func engawa(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.engawa, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "engawaDetail", bundle: ..., traitCollection: ...)`
    static func engawaDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.engawaDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "hamachi", bundle: ..., traitCollection: ...)`
    static func hamachi(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.hamachi, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "hamachiDetail", bundle: ..., traitCollection: ...)`
    static func hamachiDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.hamachiDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "home_image", bundle: ..., traitCollection: ...)`
    static func home_image(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.home_image, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "hotate", bundle: ..., traitCollection: ...)`
    static func hotate(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.hotate, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "hotateDetail", bundle: ..., traitCollection: ...)`
    static func hotateDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.hotateDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "ika", bundle: ..., traitCollection: ...)`
    static func ika(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.ika, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "ikaDetail", bundle: ..., traitCollection: ...)`
    static func ikaDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.ikaDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "ikura", bundle: ..., traitCollection: ...)`
    static func ikura(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.ikura, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "ikuraDetail", bundle: ..., traitCollection: ...)`
    static func ikuraDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.ikuraDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "kappa", bundle: ..., traitCollection: ...)`
    static func kappa(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.kappa, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "kappaDetail", bundle: ..., traitCollection: ...)`
    static func kappaDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.kappaDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "kohada", bundle: ..., traitCollection: ...)`
    static func kohada(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.kohada, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "kohadaDetail", bundle: ..., traitCollection: ...)`
    static func kohadaDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.kohadaDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "library_btn", bundle: ..., traitCollection: ...)`
    static func library_btn(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.library_btn, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "maguro", bundle: ..., traitCollection: ...)`
    static func maguro(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.maguro, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "maguroDetail", bundle: ..., traitCollection: ...)`
    static func maguroDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.maguroDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "manaita", bundle: ..., traitCollection: ...)`
    static func manaita(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.manaita, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "name_ribbon", bundle: ..., traitCollection: ...)`
    static func name_ribbon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.name_ribbon, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "natto", bundle: ..., traitCollection: ...)`
    static func natto(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.natto, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "nattoDetail", bundle: ..., traitCollection: ...)`
    static func nattoDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.nattoDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "oshinagaki", bundle: ..., traitCollection: ...)`
    static func oshinagaki(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.oshinagaki, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "retake_btn", bundle: ..., traitCollection: ...)`
    static func retake_btn(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.retake_btn, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "saba", bundle: ..., traitCollection: ...)`
    static func saba(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.saba, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "sabaDetail", bundle: ..., traitCollection: ...)`
    static func sabaDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.sabaDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "salmon", bundle: ..., traitCollection: ...)`
    static func salmon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.salmon, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "salmonDetail", bundle: ..., traitCollection: ...)`
    static func salmonDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.salmonDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "sinboard_kanban", bundle: ..., traitCollection: ...)`
    static func sinboard_kanban(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.sinboard_kanban, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "splash", bundle: ..., traitCollection: ...)`
    static func splash(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.splash, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "syari", bundle: ..., traitCollection: ...)`
    static func syari(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.syari, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "taco", bundle: ..., traitCollection: ...)`
    static func taco(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.taco, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "tacoDetail", bundle: ..., traitCollection: ...)`
    static func tacoDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.tacoDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "tai", bundle: ..., traitCollection: ...)`
    static func tai(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.tai, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "taiDetail", bundle: ..., traitCollection: ...)`
    static func taiDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.taiDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "tamago", bundle: ..., traitCollection: ...)`
    static func tamago(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.tamago, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "tamagoDetail", bundle: ..., traitCollection: ...)`
    static func tamagoDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.tamagoDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "tsubugai", bundle: ..., traitCollection: ...)`
    static func tsubugai(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.tsubugai, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "tsubugaiDetail", bundle: ..., traitCollection: ...)`
    static func tsubugaiDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.tsubugaiDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "uni", bundle: ..., traitCollection: ...)`
    static func uni(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.uni, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "uniDetail", bundle: ..., traitCollection: ...)`
    static func uniDetail(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.uniDetail, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "wallpaper", bundle: ..., traitCollection: ...)`
    static func wallpaper(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.wallpaper, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 0 nibs.
  struct nib {
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 1 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `cell`.
    static let cell: Rswift.ReuseIdentifier<customCell> = Rswift.ReuseIdentifier(identifier: "cell")
    
    fileprivate init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 2 view controllers.
  struct segue {
    /// This struct is generated for `libraryViewController`, and contains static references to 1 segues.
    struct libraryViewController {
      /// Segue identifier `toDetailfromLibrary`.
      static let toDetailfromLibrary: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, libraryViewController, detailViewController> = Rswift.StoryboardSegueIdentifier(identifier: "toDetailfromLibrary")
      
      /// Optionally returns a typed version of segue `toDetailfromLibrary`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func toDetailfromLibrary(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, libraryViewController, detailViewController>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.libraryViewController.toDetailfromLibrary, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    /// This struct is generated for `resultViewController`, and contains static references to 1 segues.
    struct resultViewController {
      /// Segue identifier `toDetailfromResult`.
      static let toDetailfromResult: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, resultViewController, detailViewController> = Rswift.StoryboardSegueIdentifier(identifier: "toDetailfromResult")
      
      /// Optionally returns a typed version of segue `toDetailfromResult`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func toDetailfromResult(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, resultViewController, detailViewController>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.resultViewController.toDetailfromResult, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 0 localization tables.
  struct string {
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct nib {
    fileprivate init() {}
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try main.validate()
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      fileprivate init() {}
    }
    
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = firstViewController
      
      let bundle = R.hostingBundle
      let homeVC = StoryboardViewControllerResource<testcameraViewController>(identifier: "homeVC")
      let libraryVC = StoryboardViewControllerResource<libraryViewController>(identifier: "libraryVC")
      let name = "Main"
      let resultVC = StoryboardViewControllerResource<resultViewController>(identifier: "resultVC")
      
      func homeVC(_: Void = ()) -> testcameraViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: homeVC)
      }
      
      func libraryVC(_: Void = ()) -> libraryViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: libraryVC)
      }
      
      func resultVC(_: Void = ()) -> resultViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: resultVC)
      }
      
      static func validate() throws {
        if UIKit.UIImage(named: "retake_btn") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'retake_btn' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "backboard") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'backboard' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "oshinagaki") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'oshinagaki' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "home_image") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'home_image' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "name_ribbon") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'name_ribbon' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "sinboard_kanban") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'sinboard_kanban' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "splash") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'splash' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "detail_btn") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'detail_btn' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "wallpaper") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'wallpaper' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "back2home_btn") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'back2home_btn' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "library_btn") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'library_btn' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "manaita") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'manaita' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "camera_btn") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'camera_btn' is used in storyboard 'Main', but couldn't be loaded.") }
        if _R.storyboard.main().homeVC() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'homeVC' could not be loaded from storyboard 'Main' as 'testcameraViewController'.") }
        if _R.storyboard.main().libraryVC() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'libraryVC' could not be loaded from storyboard 'Main' as 'libraryViewController'.") }
        if _R.storyboard.main().resultVC() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'resultVC' could not be loaded from storyboard 'Main' as 'resultViewController'.") }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
