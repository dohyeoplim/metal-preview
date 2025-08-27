//
//  ShapeStyle+Extensions.swift
//  MetalPreview
//
//  Created by dohyeoplim on 8/28/25.
//

import SwiftUI

private let tl = Color(hex: "#6E85B7")
private let tc = Color(hex: "#B4A7D6")
private let tr = Color(hex: "#4C3A8A")

private let ml = Color(hex: "#B4A7D6")
private let mc = Color(hex: "#4C3A8A")
private let mr = Color(hex: "#6E85B7")

private let bl = Color(hex: "#4C3A8A")
private let bc = Color(hex: "#6E85B7")
private let br = Color(hex: "#B4A7D6")

extension ShapeStyle where Self == AnyShapeStyle {
    static func grainGradient(time: TimeInterval, gridSize: Int = 3) -> Self {
        return AnyShapeStyle(ShaderLibrary.default.grainGradient(
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
