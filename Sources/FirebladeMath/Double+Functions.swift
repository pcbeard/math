//
//  Double+Functions.swift
//  FirebladeEngine
//
//  Created by Christian Treffs on 03.10.17.
//

import simd

/// Computes the absolute value of a floating point value arg.
///
/// - Parameter double: 	floating point value
/// - Returns: If successful, returns the absolute value of arg (|arg|). The value returned is exact and does not depend on any rounding modes.
public func abs(_ double: Float64) -> Float64 { return simd.fabs(double) }

/// Computes the principal value of the arc cosine of arg.
///
/// - Parameter double: floating point value
/// - Returns: If no errors occur, the arc cosine of arg (arccos(arg)) in the range [0 ; π], is returned.
///			   If a domain error occurs, an implementation-defined value is returned (NaN where supported).
///				If a range error occurs due to underflow, the correct result (after rounding) is returned.
public func acos(_ double: Float64) -> Float64 { return simd.acos(double) }

///  Computes the inverse hyperbolic cosine of arg.
///
/// - Parameter double: 	floating point value representing the area of a hyperbolic sector
/// - Returns: If no errors occur, the inverse hyperbolic cosine of arg (cosh-1
///	(arg), or arcosh(arg)) on the interval [0, +∞], is returned.
/// If a domain error occurs, an implementation-defined value is returned (NaN where supported).
public func acosh(_ double: Float64) -> Float64 { return simd.acosh(double) }

/// Computes the principal values of the arc sine of arg.
///
/// - Parameter double: 	floating point value
/// - Returns: If no errors occur, the arc sine of arg (arcsin(arg)) in the range [-π/2;+π/2], is returned.
/// If a domain error occurs, an implementation-defined value is returned (NaN where supported).
/// If a range error occurs due to underflow, the correct result (after rounding) is returned.
public func asin(_ double: Float64) -> Float64 { return simd.asin(double) }

/// Computes the inverse hyperbolic sine of arg.
///
/// - Parameter double: floating point value representing the area of a hyperbolic sector
/// - Returns: If no errors occur, the inverse hyperbolic sine of arg (sinh^-1(arg), or arsinh(arg)), is returned.
/// If a range error occurs due to underflow, the correct result (after rounding) is returned.
public func asinh(_ double: Float64) -> Float64 { return simd.asinh(double) }

/// Computes the principal value of the arc tangent of arg.
///
/// - Parameter double: floating point value
/// - Returns: If no errors occur, the arc tangent of arg (arctan(arg)) in the range [-π/2;+π/2] radians, is returned.
/// If a range error occurs due to underflow, the correct result (after rounding) is returned.
public func atan(_ double: Float64) -> Float64 { return simd.atan(double) }

/// Computes the inverse hyperbolic tangent of arg.
///
/// - Parameter double: floating point value representing the area of a hyperbolic sector
/// - Returns: If no errors occur, the inverse hyperbolic tangent of arg (tanh^-1(arg), or artanh(arg)), is returned.
/// If a domain error occurs, an implementation-defined value is returned (NaN where supported).
/// If a pole error occurs, ±HUGE_VAL, ±HUGE_VALF, or ±HUGE_VALL is returned (with the correct sign).
/// If a range error occurs due to underflow, the correct result (after rounding) is returned.
public func atanh(_ double: Float64) -> Float64 { return simd.atanh(double) }

/// Computes the smallest integer value not less than arg.
///
/// - Parameter double: 	floating point value
/// - Returns: If no errors occur, the smallest integer value not less than arg, that is ⌈arg⌉, is returned.
public func ceil(_ double: Float64) -> Float64 { return simd.ceil(double) }

/// x clamped to the range [min, max].
/// Note that if you want to clamp all lanes to the same range, you can use a scalar value for min and max.
/// - Parameters:
///   - x: value to be clamped
///   - min: min range bound
///   - max: max range bound
/// - Returns: x clamped to the range [min, max]
public func clamp(_ x: Float64, _ min: Float64, _ max: Float64) -> Float64 { return simd.simd_clamp(x, min, max) }

/// Computes the cosine of arg (measured in radians).
///
/// - Parameter double: floating point value representing angle in radians
/// - Returns: If no errors occur, the cosine of arg (cos(arg)) in the range [-1 ; +1], is returned.
/// If a domain error occurs, an implementation-defined value is returned (NaN where supported).
/// If a range error occurs due to underflow, the correct result (after rounding) is returned.
public func cos(_ doubleAngleRadians: Float64) -> Float64 { return simd.cos(doubleAngleRadians) }

/// Computes the hyperbolic cosine of arg.
///
/// - Parameter double: floating point value representing a hyperbolic angle
/// - Returns: If no errors occur, the hyperbolic cosine of arg (cosh(arg), or (e^arg+e^-arg)/2) is returned.
/// If a range error due to overflow occurs, +HUGE_VAL, +HUGE_VALF, or +HUGE_VALL is returned.
public func cosh(_ double: Float64) -> Float64 { return simd.cosh(double) }

/// Converts radians to degrees.
///
/// - Parameter radians: an angle in radians.
/// - Returns:  the argument converted to degrees.
//TODO:public func degrees(_ radians: Float64) -> Float64 { return radians * radToDeg.double }

/// Computes the distance between the arguments.
///
/// - Parameters:
///   - x: a double argument.
///   - y: a double argument.
/// - Returns: the distance between the arguments.
public func distance(_ x: Float64, _ y: Float64) -> Float64 { return abs(x-y) }

/// Computes the dot product of the arguments.
/// For scalar components `dot(x, y)` is equivalent to `x*y`.
/// - Parameters:
///   - x: a double argument.
///   - y: a double argument.
/// - Returns: the dot product of the arguments.
public func dot(_ x: Float64, _ y: Float64) -> Float64 { return x*y }

///  Computes the e (Euler's number, 2.7182818) raised to the given power arg.
///
/// - Parameter double: floating point value
/// - Returns: If no errors occur, the base-e exponential of arg (e^arg) is returned.
/// If a range error due to overflow occurs, +HUGE_VAL, +HUGE_VALF, or +HUGE_VALL is returned.
/// If a range error occurs due to underflow, the correct result (after rounding) is returned.
public func exp(_ power: Float64) -> Float64 { return simd.exp(power) }

/// Computes 2 raised to the given power n.
///
/// - Parameter double: 	floating point value
/// - Returns: If no errors occur, the base-2 exponential of n (2^n) is returned.
/// If a range error due to overflow occurs, +HUGE_VAL, +HUGE_VALF, or +HUGE_VALL is returned.
/// If a range error occurs due to underflow, the correct result (after rounding) is returned.
public func exp2(_ power: Float64) -> Float64 { return simd.exp2(power) }

/// Flips the normal vector ''n'' to face the direction opposite to the incident vector ''i''
///
/// - Parameters:
///   - n: the normal
///   - i: the incident vector
///   - nref: the reference normal
/// - Returns: one of the following:
///  ''n'' if dot(''i'', ''nref'') < 0.
///  ''-n'' otherwise.
public func faceforward(n: Float64, i: Float64, nref: Float64) -> Float64 {
	let dot: Float64 = i*nref
	if dot < 0.0 {
		return n
	} else if isNaN(dot) {
		return Float64.nan
	} else {
		return -n
	}
}

/// Computes the largest integer value not greater than arg.
///
/// - Parameter double: floating point value
/// - Returns: If no errors occur, the largest integer value not greater than arg, that is ⌊arg⌋, is returned.
public func floor(_ double: Float64) -> Float64 { return simd.floor(double) }

/// The "fractional part" of x, lying in the range [0, 1).
/// floor(x) + fract(x) is *approximately* equal to x.
/// If x is positive and finite, then the two values are exactly equal.
///
/// - Parameter double: floating point value
/// - Returns: The "fractional part" of x
public func fract(_ double: Float64) -> Float64 { return simd.simd_fract(double) }

/// Returns true if Float64.infinity == arg.
///
/// - Parameter double: floating point value
/// - Returns: true if Float64.infinity == arg, false otherwise
public func isInfinite(_ double: Float64) -> Bool { return Float64.infinity == double }

/// Checks if arg is Not a Number (NaN).
///
/// - Parameter double: floating point value
/// - Returns: true/false
public func isNaN(_ double: Float64) -> Bool { return Float64.nan == double }

public func isNegativeInfinity(_ double: Float64) -> Bool { return double.floatingPointClass == .negativeInfinity }
public func isNegativeZero(_ double: Float64) -> Bool { return double.floatingPointClass == .negativeZero }
public func isPositiveInfinity(_ double: Float64) -> Bool { return double.floatingPointClass == .positiveInfinity }
public func isPositiveZero(_ double: Float64) -> Bool { return double.floatingPointClass == .positiveZero }

/// Computes the length of the argument.
/// For scalar components `length(x)` is equivalent to `abs(x)`.
/// - Parameter double: a double argument
/// - Returns: the distance between the argument and the origin.
public func length(_ double: Float64) -> Float64 { return abs(double) }

/// Computes the natural (base e) logarithm of arg.
///
/// - Parameter double: 	floating point value
/// - Returns: If no errors occur, the natural (base-e) logarithm of arg (ln(arg) or log_e(arg)) is returned.
/// If a domain error occurs, an implementation-defined value is returned (NaN where supported).
/// If a pole error occurs, -HUGE_VAL, -HUGE_VALF, or -HUGE_VALL is returned.
public func log(_ double: Float64) -> Float64 { return simd.log(double) }

///  Computes the base 2 logarithm of arg.
///
/// - Parameter double: 	floating point value
/// - Returns: If no errors occur, the base-2 logarithm of arg (log_2(arg) or lb(arg)) is returned.
/// If a domain error occurs, an implementation-defined value is returned (NaN where supported).
/// If a pole error occurs, -HUGE_VAL, -HUGE_VALF, or -HUGE_VALL is returned.
public func log2(_ double: Float64) -> Float64 { return simd.log2(double) }

/// Computes the common (base-10) logarithm of arg.
///
/// - Parameter double: 	floating point value
/// - Returns: If no errors occur, the common (base-10) logarithm of arg (log_10(arg) or lg(arg)) is returned.
/// If a domain error occurs, an implementation-defined value is returned (NaN where supported).
/// If a pole error occurs, -HUGE_VAL, -HUGE_VALF, or -HUGE_VALL is returned.
public func log10(_ double: Float64) -> Float64 { return simd.log10(double) }

/// Returns the larger of two floating point arguments, treating NaNs as missing data (between a NaN and a numeric value, the numeric value is chosen).
///
/// - Parameters:
///   - x: floating point value
///   - y: floating point value
/// - Returns: If successful, returns the larger of two floating point values. The value returned is exact and does not depend on any rounding modes.
public func max(_ x: Float64, _ y: Float64) -> Float64 { return simd.fmax(x, y) }

/// Returns the smaller of two floating point arguments, treating NaNs as missing data (between a NaN and a numeric value, the numeric value is chosen).
///
/// - Parameters:
///   - x: floating point value
///   - y: floating point value
/// - Returns: If successful, returns the smaller of two floating point values. The value returned is exact and does not depend on any rounding modes.
public func min(_ x: Float64, _ y: Float64) -> Float64 { return simd.fmin(x, y) }

/// Linearly interpolates between x and y, taking the value x when t=0 and y when t=1
public func mix(interpolate x: Float64, y: Float64, t: Float64) -> Float64 { return simd.simd_mix(x, y, t) }

/// Computes the floating-point remainder of the division operation x/y.
/// The floating-point remainder of the division operation x/y calculated by this function is exactly the value x - n*y, where n is x/y with its fractional part truncated.
/// The returned value has the same sign as x and is less or equal to y in magnitude.
/// - Parameters:
///   - x: 	floating point value
///   - y: 	floating point value
/// - Returns: If successful, returns the floating-point remainder of the division x/y as defined above.
/// If a domain error occurs, an implementation-defined value is returned (NaN where supported).
/// If a range error occurs due to underflow, the correct result (after rounding) is returned.
public func mod(_ x: Float64, _ y: Float64) -> Float64 { return simd.fmod(x, y) }

/// Returns the normalized value of the argument.
///
/// - Parameter x: a double argument.
/// - Returns: one of the following:
///   -1 if ''x'' < 0.
///   1 if ''x'' > 0.
///   NaN otherwise.
public func normalize(_ x: Float64) -> Float64 {
	// FIXME: is this the expected behaviour?
	if x > 0 { return 1 } else if x < 0 { return -1 } else { return Float64.nan }

}

/// Computes the value of base raised to the power exponent.
///
/// - Parameters:
///   - base: 	base as floating point value
///   - exponent: exponent as floating point value
/// - Returns: If no errors occur, base raised to the power of exponent (base^exponent) is returned.
/// If a domain error occurs, an implementation-defined value is returned (NaN where supported).
/// If a pole error or a range error due to overflow occurs, ±HUGE_VAL, ±HUGE_VALF, or ±HUGE_VALL is returned.
/// If a range error occurs due to underflow, the correct result (after rounding) is returned.
public func pow(_ base: Float64, _ exponent: Float64) -> Float64 { return simd.pow(base, exponent) }

/// Computes the value of base 2 raised to the power exponent.
public func pow2(_ exponent: Float64) -> Float64 { return simd.pow(2, exponent) }

/// Converts degress to radians.
///
/// - Parameter degrees: an angle (in degrees)
/// - Returns: the argument converted to radians.
//TODO:public func radians(_ degrees: Float64) -> Float64 { return degrees*degToRad.double }

/// Reflects the incident vector ''i'' with respect to the normal vector ''n''.
/// This function is equivalent to `i - 2*dot(n, i)*n`.
///
/// - Parameters:
///   - i: the incident vector.
///   - n: the normal, must be normalized to achieve the desired result.
/// - Returns: the reflection vector.
public func reflect(i: Float64, n: Float64) -> Float64 { return i - 2*(n*i)*n }

/// Refracts the incident vector ''i'' with respect to the normal vector ''n''
/// using the ratio of indices of refraction ''eta''.
///
/// - Parameters:
///   - i: the incident vector, must be normalized to achieve the desired result.
///   - n: the normal, must be normalized to achieve the desired result.
///   - eta: the ratio of indices of refration.
/// - Returns: the refraction vector.
public func refract(i: Float64, n: Float64, eta: Float64) -> Float64 {
	let ni: Float64 = n*i
	let k: Float64 = 1 - eta*eta*(1 - ni*ni)
	if (k < 0) { return Float64(0.0) } else { return eta*i - (eta*ni + sqrt(k))*n }
}

/// Computes the nearest integer value to arg (in floating-point format), rounding halfway cases away from zero, regardless of the current rounding mode.
///
/// - Parameter double: 	floating point value
/// - Returns: If no errors occur, the nearest integer value to arg, rounding halfway cases away from zero, is returned.
public func round(_ double: Float64) -> Float64 { return simd.round(double) }

/// Computes the nearest integer value to arg (in integer format), rounding halfway cases away from zero, regardless of the current rounding mode.
///
/// - Parameter double: 	floating point value
/// - Returns: If no errors occur, the nearest integer value to arg, rounding halfway cases away from zero, is returned.
public func round(_ double: Float64) -> Int32 { return Int32(simd.lround(double)) }

/// Returns -1 if `x < 0`, +1 if `x > 0`, and 0 otherwise (`sign(NaN)` is 0).
public func sign(_ double: Float64) -> Float64 { return simd.sign(double) }

/// Computes the sine of arg (measured in radians).
///
/// - Parameter double: floating point value representing an angle in radians
/// - Returns: If no errors occur, the sine of arg (sin(arg)) in the range [-1 ; +1], is returned.
/// If a domain error occurs, an implementation-defined value is returned (NaN where supported).
/// If a range error occurs due to underflow, the correct result (after rounding) is returned.
public func sin(_ floatAngleRadians: Float64) -> Float64 { return simd.sin(floatAngleRadians) }

/// Computes hyperbolic sine of arg.
///
/// - Parameter double: 	floating point value representing a hyperbolic angle
/// - Returns: If no errors occur, the hyperbolic sine of arg (sinh(arg), or (e^arg*-e-arg)/2) is returned.
/// If a range error due to overflow occurs, ±HUGE_VAL, ±HUGE_VALF, or ±HUGE_VALL is returned.
/// If a range error occurs due to underflow, the correct result (after rounding) is returned.
public func sinh(_ double: Float64) -> Float64 { return simd.sinh(double) }

/// Interpolates smoothly between 0 at edge0 and 1 at edge1
/// You can use a scalar value for edge0 and edge1 if you want to clamp all lanes at the same points.
public func smoothstep(interpolate edge0: Float64, edge1: Float64, x: Float64) -> Float64 { return simd.simd_smoothstep(edge0, edge1, x) }

/// Reciprocal square root.
///
/// - Parameter double: floating point value
/// - Returns: 1 / sqrt(arg)
public func rsqrt(_ double: Float64) -> Float64 { return simd.rsqrt(double) }

/// Computes square root of arg.
///
/// - Parameter double: 	floating point value
/// - Returns: If no errors occur, square root of arg (√arg), is returned.
/// If a domain error occurs, an implementation-defined value is returned (NaN where supported).
/// If a range error occurs due to underflow, the correct result (after rounding) is returned.
public func sqrt(_ double: Float64) -> Float64 { return simd.sqrt(double) }

/// Returns 0.0 if x < edge, and 1.0 otherwise.
public func step(_ x: Float64, edge: Float64) -> Float64 { return simd.step(x, edge: edge) }

/// Computes the tangent of arg (measured in radians).
///
/// - Parameter double: 	floating point value representing angle in radians
/// - Returns: If no errors occur, the tangent of arg (tan(arg)) is returned.
/// If a domain error occurs, an implementation-defined value is returned (NaN where supported).
/// If a range error occurs due to underflow, the correct result (after rounding) is returned.
public func tan(_ double: Float64) -> Float64 { return simd.tan(double) }

/// Computes the hyperbolic tangent of arg.
///
/// - Parameter double: 	floating point value representing a hyperbolic angle
/// - Returns: If no errors occur, the hyperbolic tangent of arg (tanh(arg), or (e^arg*-e^-arg)/(e^arg*+e^-arg)) is returned.
/// If a range error occurs due to underflow, the correct result (after rounding) is returned.
public func tanh(_ double: Float64) -> Float64 { return simd.tanh(double) }

/// Computes the nearest integer not greater in magnitude than arg.
///
/// - Parameter double: 	floating point value
/// - Returns: If no errors occur, the nearest integer value not greater in magnitude than arg (in other words, arg rounded towards zero), is returned.
public func trunc(_ double: Float64) -> Float64 { return simd.trunc(double) }
