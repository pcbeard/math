//
//  clamp.swift
//  FirebladeMath
//
//  Created by Christian Treffs on 26.08.19.
//

#if canImport(simd)
import func simd.simd_clamp
#endif

/// x clamped to the range [min, max].
/// Note that if you want to clamp all lanes to the same range, you can use a scalar value for min and max.
/// - Parameters:
///   - x: value to be clamped
///   - min: min range bound
///   - max: max range bound
/// - Returns: x clamped to the range [min, max]
public func clamp(_ x: Double, _ minVal: Double, _ maxVal: Double) -> Double {
    #if USE_SIMD
    return simd_clamp(x, minVal, maxVal)
    #else
    return min(max(x, minVal), maxVal)
    #endif
}

/// x clamped to the range [min, max].
/// Note that if you want to clamp all lanes to the same range, you can use a scalar value for min and max.
/// - Parameters:
///   - x: value to be clamped
///   - min: min range bound
///   - max: max range bound
/// - Returns: x clamped to the range [min, max]
public func clamp(_ x: Float, _ minVal: Float, _ maxVal: Float) -> Float {
    #if USE_SIMD
    return simd_clamp(x, minVal, maxVal)
    #else
    return min(max(x, minVal), maxVal)
    #endif
}
