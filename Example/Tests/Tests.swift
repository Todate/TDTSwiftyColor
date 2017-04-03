// https://github.com/Quick/Quick

import Quick
import Nimble
import TDTSwiftyColor

class TableOfContentsSpec: QuickSpec {
    override func spec() {

        describe("components") {
            context("defined color") {
                it("these will success") {
                    expect(UIColor.black.components     == (0.0, 0.0, 0.0, 1.0)) == true
                    expect(UIColor.white.components     == (1.0, 1.0, 1.0, 1.0)) == true
                    expect(UIColor.red.components       == (1.0, 0.0, 0.0, 1.0)) == true
                    expect(UIColor.green.components     == (0.0, 1.0, 0.0, 1.0)) == true
                    expect(UIColor.blue.components      == (0.0, 0.0, 1.0, 1.0)) == true
                    expect(UIColor.yellow.components    == (1.0, 1.0, 0.0, 1.0)) == true
                    expect(UIColor.magenta.components   == (1.0, 0.0, 1.0, 1.0)) == true
                    expect(UIColor.cyan.components      == (0.0, 1.0, 1.0, 1.0)) == true
                    expect(UIColor.gray.components      == (0.5, 0.5, 0.5, 1.0)) == true
//                    expect(UIColor.darkGray.components  == (85/255.0, 85/255.0, 85/255.0, 1.0)) == true
//                    expect(UIColor.brown.components     == (153/255.0, 102/255.0, 51/255.0, 1.0)) == true
                    expect(UIColor.orange.components    == (1.0, 0.5, 0.0, 1.0)) == true
                    expect(UIColor.purple.components    == (0.5, 0.0, 0.5, 1.0)) == true
                    expect(UIColor.clear.components     == (0.0, 0.0, 0.0, 0.0)) == true
                }
            }
        }

        describe("UInt") {
            context("prefix 0x") {
                it("this is black(100%)") {
                    let color = UIColor(rgb: 0x000000)

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 0
                    expect(green) == 0
                    expect(blue) == 0
                    expect(alpha) == 1
                }

                it("this is black(50%)") {
                    let color = UIColor(rgb: 0x000000, alpha: 0.5)

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 0
                    expect(green) == 0
                    expect(blue) == 0
                    expect(alpha) == 0.5
                }

                it("this is black(0%)") {
                    let color = UIColor(rgb: 0x000000, alpha: 0.0)

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 0
                    expect(green) == 0
                    expect(blue) == 0
                    expect(alpha) == 0
                }

                it("this is white(100%)") {
                    let color = UIColor(rgb: 0xffffff)

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 1
                    expect(green) == 1
                    expect(blue) == 1
                    expect(alpha) == 1
                }

                it("this is white(100%)") {
                    let color = UIColor(rgb: 0xFFFFFF)

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 1
                    expect(green) == 1
                    expect(blue) == 1
                    expect(alpha) == 1
                }

                it("this is red(100%)") {
                    let color = UIColor(rgb: 0xff0000)

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 1
                    expect(green) == 0
                    expect(blue) == 0
                    expect(alpha) == 1
                }

                it("this is green(100%)") {
                    let color = UIColor(rgb: 0x00ff00)

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 0
                    expect(green) == 1
                    expect(blue) == 0
                    expect(alpha) == 1
                }

                it("this is blue(100%)") {
                    let color = UIColor(rgb: 0x0000ff)

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 0
                    expect(green) == 0
                    expect(blue) == 1
                    expect(alpha) == 1
                }

                it("this is blue(100%)") {
                    let color = UIColor(rgb: 0x00000ff)

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 0
                    expect(green) == 0
                    expect(blue) == 1
                    expect(alpha) == 1
                }

                it("this is red(100%)") {
                    let color = UIColor(rgb: 0x0ff0000)

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 1
                    expect(green) == 0
                    expect(blue) == 0
                    expect(alpha) == 1
                }

                it("this is darkGray(100%)") {
                    let color = UIColor(rgb: 0x555555)

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 85 / 255.0
                    expect(green) == 85 / 255.0
                    expect(blue) == 85 / 255.0
                    expect(alpha) == 1
                }

                it("this is brown(100%)") {
                    let color = UIColor(rgb: 0x996633)

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 153 / 255.0
                    expect(green) == 102 / 255.0
                    expect(blue) == 51 / 255.0
                    expect(alpha) == 1
                }
            }
        }

        describe("hex string") {
            context("prefix #") {
                it("length 3") {
                    let color = UIColor(hex: "#fff")

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 1
                    expect(green) == 1
                    expect(blue) == 1
                    expect(alpha) == 1
                }

                it("length 6") {
                    let color = UIColor(hex: "#0000FF")

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 0
                    expect(green) == 0
                    expect(blue) == 1
                    expect(alpha) == 1
                }

                it("length 8") {
                    let color = UIColor(hex: "#FF00FF00")

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 0
                    expect(green) == 1
                    expect(blue) == 0
                    expect(alpha) == 1
                }

                it("invalid charactor") {
                    let color = UIColor(hex: "#00000-")

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 0
                    expect(green) == 0
                    expect(blue) == 0
                    expect(alpha) == 1
                }
            }

            context("no prefix") {
                it("length 0") {
                    let color = UIColor(hex: "")

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 0
                    expect(green) == 0
                    expect(blue) == 0
                    expect(alpha) == 1
                }

                it("length 1") {
                    let color = UIColor(hex: "d")

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 0
                    expect(green) == 0
                    expect(blue) == 0
                    expect(alpha) == 1
                }

                it("length 2") {
                    let color = UIColor(hex: "ff")

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 0
                    expect(green) == 0
                    expect(blue) == 0
                    expect(alpha) == 1
                }

                it("length 3") {
                    let color = UIColor(hex: "f00")

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 1
                    expect(green) == 0
                    expect(blue) == 0
                    expect(alpha) == 1
                }

                it("length 4") {
                    let color = UIColor(hex: "1234")

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 0
                    expect(green) == 0
                    expect(blue) == 0
                    expect(alpha) == 1
                }

                it("length 5") {
                    let color = UIColor(hex: "12345")

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 0
                    expect(green) == 0
                    expect(blue) == 0
                    expect(alpha) == 1
                }

                it("length 6") {
                    let color = UIColor(hex: "ffff00")

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 1
                    expect(green) == 1
                    expect(blue) == 0
                    expect(alpha) == 1
                }

                it("length 7") {
                    let color = UIColor(hex: "1234567")

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 0
                    expect(green) == 0
                    expect(blue) == 0
                    expect(alpha) == 1
                }

                it("length 8") {
                    let color = UIColor(hex: "FFFF00FF")

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 1
                    expect(green) == 0
                    expect(blue) == 1
                    expect(alpha) == 1
                }

                it("length 9") {
                    let color = UIColor(hex: "123456789")

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 0
                    expect(green) == 0
                    expect(blue) == 0
                    expect(alpha) == 1
                }

                it("invalid charactor") {
                    let color = UIColor(hex: "00000G")

                    let (red, green, blue, alpha) = color.components

                    expect(red) == 0
                    expect(green) == 0
                    expect(blue) == 0
                    expect(alpha) == 1
                }
            }
        }

        describe("to string") {
            context("rgb") {
                it("these will success") {
                    expect(UIColor.black.rgbString)     == "000000"
                    expect(UIColor.white.rgbString)     == "FFFFFF"
                    expect(UIColor.red.rgbString)       == "FF0000"
                    expect(UIColor.green.rgbString)     == "00FF00"
                    expect(UIColor.blue.rgbString)      == "0000FF"
                    expect(UIColor.yellow.rgbString)    == "FFFF00"
                    expect(UIColor.magenta.rgbString)   == "FF00FF"
                    expect(UIColor.cyan.rgbString)      == "00FFFF"
                    expect(UIColor.gray.rgbString)      == "7F7F7F"
                    expect(UIColor.darkGray.rgbString)  == "555555"
                    expect(UIColor.brown.rgbString)     == "996633"
                    expect(UIColor.orange.rgbString)    == "FF7F00"
                    expect(UIColor.purple.rgbString)    == "7F007F"
                    expect(UIColor.clear.rgbString)     == "000000"
                }
            }

            context("argb") {
                it("these will success") {
                    expect(UIColor.black.argbString)    == "FF000000"
                    expect(UIColor.white.argbString)    == "FFFFFFFF"
                    expect(UIColor.red.argbString)      == "FFFF0000"
                    expect(UIColor.green.argbString)    == "FF00FF00"
                    expect(UIColor.blue.argbString)     == "FF0000FF"
                    expect(UIColor.yellow.argbString)   == "FFFFFF00"
                    expect(UIColor.magenta.argbString)  == "FFFF00FF"
                    expect(UIColor.cyan.argbString)     == "FF00FFFF"
                    expect(UIColor.gray.argbString)     == "FF7F7F7F"
                    expect(UIColor.darkGray.argbString) == "FF555555"
                    expect(UIColor.brown.argbString)    == "FF996633"
                    expect(UIColor.orange.argbString)   == "FFFF7F00"
                    expect(UIColor.purple.argbString)   == "FF7F007F"
                    expect(UIColor.clear.argbString)    == "00000000"
                }
            }
        }

    }
}
