//
//  SIMD2+Extensions.swift
//
//
//  Created by Christian Treffs on 25.08.19.
//

extension SIMD2: Sequence {
    public __consuming func makeIterator() -> IndexingIterator<[Scalar]> {
        return [x, y].makeIterator()
    }
}

extension SIMD2 where Scalar: FirebladeMath.FloatingPointScalar {
    @inlinable public var isNaN: Bool {
        return x.isNaN || y.isNaN
    }

    @inlinable public var length: Scalar {
        return FirebladeMath.length(self)
    }

    @inlinable public var normalized: SIMD2<Scalar> {
        return FirebladeMath.normalize(self)
    }
}
