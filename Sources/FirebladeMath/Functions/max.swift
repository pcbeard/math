#if canImport(Darwin)
import Darwin.C.math
#elseif canImport(Glibc)
import Glibc
#else
#error("unsupported platform")
#endif

/// Returns the larger of two floating point arguments, treating NaNs as missing data (between a NaN and a numeric value, the numeric value is chosen).
///
/// - Parameters:
///   - x: floating point value
///   - y: floating point value
/// - Returns: If successful, returns the larger of two floating point values. The value returned is exact and does not depend on any rounding modes.
public func max(_ x: Float32, _ y: Float32) -> Float32 {
    #if os(macOS) || os(iOS) || os(tvOS)
    return Darwin.fmaxf(x, y)
    #elseif os(Linux)
    return Glibc.fmaxf(x, y)
    #endif
}

/// Returns the larger of two floating point arguments, treating NaNs as missing data (between a NaN and a numeric value, the numeric value is chosen).
///
/// - Parameters:
///   - x: floating point value
///   - y: floating point value
/// - Returns: If successful, returns the larger of two floating point values. The value returned is exact and does not depend on any rounding modes.
public func max(_ x: Float64, _ y: Float64) -> Float64 { return fmax(x, y) }
