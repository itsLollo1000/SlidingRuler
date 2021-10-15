//
//  BinaryIntegerExtension.swift
//
//  SlidingRuler
//
//  MIT License
//
//  Copyright (c) 2020 Pierre Tacchi
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation

extension BinaryInteger {
    @inlinable var isEven: Bool { self.isMultiple(of: 2) }
    
    @inlinable func nextOdd() -> Self { isEven ? self+ : self }
    @inlinable func previousOdd() -> Self { isEven ? self- : self }
    
    @inlinable func nextEven() -> Self { isEven ? self : self+ }
    @inlinable func previousEven() -> Self { isEven ? self : self- }
    
    /// The numerical value considered as expressed in radians converted in degrees.
    @inlinable
    public var degree: CGFloat {
        return CGFloat(self) * degreeFactor
    }
    
    /// The numerical value considered as expressed in degrees converted in radians.
    @inlinable
    public var radian: CGFloat {
        return CGFloat(self) * radianFactor
    }
    
    /// Considers a value as an angle expressed in degrees and returns the corresponding angle in radians.
    ///
    /// - note: _x_`º` is equivalent to _x_`.degree`.
    /// - Parameter lhs: The angle value expressed in degrees.
    /// - Returns: The angle value expressed in radians.
    @inlinable
    public static postfix func ° (lhs: Self) -> CGFloat {
        return lhs.radian
    }
    
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable
    static func **<T: BinaryInteger>(lhs: Self, rhs: T) -> Self {
        return Self(pow(CGFloat(lhs), CGFloat(rhs)))
    }
    
    /// Returns the exponentiation of `lhs` by `rhs`.
    /// - Parameter lhs: The value to exponentiate.
    /// - Parameter rhs: The exponent.
    @inlinable
    static func **<T: BinaryFloatingPoint>(lhs: Self, rhs: T) -> Self {
        return Self(pow(CGFloat(lhs), CGFloat(rhs)))
    }
}
