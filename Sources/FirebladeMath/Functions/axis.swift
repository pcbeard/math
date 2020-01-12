//
//  axis.swift
//
//
//  Created by Christian Treffs on 09.09.19.
//
#if canImport(simd)
import func simd.simd_axis
#endif

/// Returns the axis about which a quaternion rotates.
@inlinable public func axis(_ quat: Quat4f) -> SIMD3<Float> {
    #if USE_SIMD
    return simd.simd_axis(quat.storage)
    #else
    return normalize(Vec3f(quat.x, quat.y, quat.z))
    #endif
}

/// Returns the axis about which a quaternion rotates.
@inlinable public func axis(_ quat: Quat4d) -> SIMD3<Double> {
    #if USE_SIMD
    return simd.simd_axis(quat.storage)
    #else
    return normalize(Vec3d(quat.x, quat.y, quat.z))
    #endif
}
