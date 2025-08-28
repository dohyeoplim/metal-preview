//
//  ShapeStyle+Extensions.swift
//  MetalPreview
//
//  Created by dohyeoplim on 8/28/25.
//

import SwiftUI

private let a = "#DEE791"
private let b = "#9ECAD6"
private let c = "#FAF9EE"

private let tl = Color(hex: a)
private let tc = Color(hex: b)
private let tr = Color(hex: c)

private let ml = Color(hex: b)
private let mc = Color(hex: c)
private let mr = Color(hex: a)

private let bl = Color(hex: c)
private let bc = Color(hex: a)
private let br = Color(hex: b)

extension ShapeStyle where Self == AnyShapeStyle {
    static func gradient(time: TimeInterval, gridSize: Int = 3) -> Self {
        return AnyShapeStyle(ShaderLibrary.default.gradient(
            .boundingRect,
            .float(3),
            .float(time),
            .colorArray([
                tl, tc, tr,
                ml, mc, mr,
                bl, bc, br
            ])
        ))
    }
}
