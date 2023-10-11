// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: geofence.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Point type.
struct Mavsdk_Rpc_Geofence_Point {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Latitude in degrees (range: -90 to +90)
  var latitudeDeg: Double = 0

  /// Longitude in degrees (range: -180 to +180)
  var longitudeDeg: Double = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Polygon type.
struct Mavsdk_Rpc_Geofence_Polygon {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Points defining the polygon
  var points: [Mavsdk_Rpc_Geofence_Point] = []

  /// Fence type
  var fenceType: Mavsdk_Rpc_Geofence_Polygon.FenceType = .inclusion

  var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Geofence polygon types.
  enum FenceType: SwiftProtobuf.Enum {
    typealias RawValue = Int

    /// Type representing an inclusion fence
    case inclusion // = 0

    /// Type representing an exclusion fence
    case exclusion // = 1
    case UNRECOGNIZED(Int)

    init() {
      self = .inclusion
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .inclusion
      case 1: self = .exclusion
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .inclusion: return 0
      case .exclusion: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}
}

#if swift(>=4.2)

extension Mavsdk_Rpc_Geofence_Polygon.FenceType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static let allCases: [Mavsdk_Rpc_Geofence_Polygon.FenceType] = [
    .inclusion,
    .exclusion,
  ]
}

#endif  // swift(>=4.2)

struct Mavsdk_Rpc_Geofence_UploadGeofenceRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Polygon(s) representing the geofence(s)
  var polygons: [Mavsdk_Rpc_Geofence_Polygon] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Mavsdk_Rpc_Geofence_UploadGeofenceResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var geofenceResult: Mavsdk_Rpc_Geofence_GeofenceResult {
    get {return _geofenceResult ?? Mavsdk_Rpc_Geofence_GeofenceResult()}
    set {_geofenceResult = newValue}
  }
  /// Returns true if `geofenceResult` has been explicitly set.
  var hasGeofenceResult: Bool {return self._geofenceResult != nil}
  /// Clears the value of `geofenceResult`. Subsequent reads from it will return its default value.
  mutating func clearGeofenceResult() {self._geofenceResult = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _geofenceResult: Mavsdk_Rpc_Geofence_GeofenceResult? = nil
}

struct Mavsdk_Rpc_Geofence_ClearGeofenceRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Mavsdk_Rpc_Geofence_ClearGeofenceResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var geofenceResult: Mavsdk_Rpc_Geofence_GeofenceResult {
    get {return _geofenceResult ?? Mavsdk_Rpc_Geofence_GeofenceResult()}
    set {_geofenceResult = newValue}
  }
  /// Returns true if `geofenceResult` has been explicitly set.
  var hasGeofenceResult: Bool {return self._geofenceResult != nil}
  /// Clears the value of `geofenceResult`. Subsequent reads from it will return its default value.
  mutating func clearGeofenceResult() {self._geofenceResult = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _geofenceResult: Mavsdk_Rpc_Geofence_GeofenceResult? = nil
}

/// Result type.
struct Mavsdk_Rpc_Geofence_GeofenceResult {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Result enum value
  var result: Mavsdk_Rpc_Geofence_GeofenceResult.Result = .unknown

  /// Human-readable English string describing the result
  var resultStr: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Possible results returned for geofence requests.
  enum Result: SwiftProtobuf.Enum {
    typealias RawValue = Int

    /// Unknown result
    case unknown // = 0

    /// Request succeeded
    case success // = 1

    /// Error
    case error // = 2

    /// Too many Polygon objects in the geofence
    case tooManyGeofenceItems // = 3

    /// Vehicle is busy
    case busy // = 4

    /// Request timed out
    case timeout // = 5

    /// Invalid argument
    case invalidArgument // = 6

    /// No system connected
    case noSystem // = 7
    case UNRECOGNIZED(Int)

    init() {
      self = .unknown
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 1: self = .success
      case 2: self = .error
      case 3: self = .tooManyGeofenceItems
      case 4: self = .busy
      case 5: self = .timeout
      case 6: self = .invalidArgument
      case 7: self = .noSystem
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .unknown: return 0
      case .success: return 1
      case .error: return 2
      case .tooManyGeofenceItems: return 3
      case .busy: return 4
      case .timeout: return 5
      case .invalidArgument: return 6
      case .noSystem: return 7
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}
}

#if swift(>=4.2)

extension Mavsdk_Rpc_Geofence_GeofenceResult.Result: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static let allCases: [Mavsdk_Rpc_Geofence_GeofenceResult.Result] = [
    .unknown,
    .success,
    .error,
    .tooManyGeofenceItems,
    .busy,
    .timeout,
    .invalidArgument,
    .noSystem,
  ]
}

#endif  // swift(>=4.2)

#if swift(>=5.5) && canImport(_Concurrency)
extension Mavsdk_Rpc_Geofence_Point: @unchecked Sendable {}
extension Mavsdk_Rpc_Geofence_Polygon: @unchecked Sendable {}
extension Mavsdk_Rpc_Geofence_Polygon.FenceType: @unchecked Sendable {}
extension Mavsdk_Rpc_Geofence_UploadGeofenceRequest: @unchecked Sendable {}
extension Mavsdk_Rpc_Geofence_UploadGeofenceResponse: @unchecked Sendable {}
extension Mavsdk_Rpc_Geofence_ClearGeofenceRequest: @unchecked Sendable {}
extension Mavsdk_Rpc_Geofence_ClearGeofenceResponse: @unchecked Sendable {}
extension Mavsdk_Rpc_Geofence_GeofenceResult: @unchecked Sendable {}
extension Mavsdk_Rpc_Geofence_GeofenceResult.Result: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "mavsdk.rpc.geofence"

extension Mavsdk_Rpc_Geofence_Point: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Point"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "latitude_deg"),
    2: .standard(proto: "longitude_deg"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularDoubleField(value: &self.latitudeDeg) }()
      case 2: try { try decoder.decodeSingularDoubleField(value: &self.longitudeDeg) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.latitudeDeg != 0 {
      try visitor.visitSingularDoubleField(value: self.latitudeDeg, fieldNumber: 1)
    }
    if self.longitudeDeg != 0 {
      try visitor.visitSingularDoubleField(value: self.longitudeDeg, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_Geofence_Point, rhs: Mavsdk_Rpc_Geofence_Point) -> Bool {
    if lhs.latitudeDeg != rhs.latitudeDeg {return false}
    if lhs.longitudeDeg != rhs.longitudeDeg {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_Geofence_Polygon: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Polygon"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "points"),
    2: .standard(proto: "fence_type"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.points) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.fenceType) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.points.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.points, fieldNumber: 1)
    }
    if self.fenceType != .inclusion {
      try visitor.visitSingularEnumField(value: self.fenceType, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_Geofence_Polygon, rhs: Mavsdk_Rpc_Geofence_Polygon) -> Bool {
    if lhs.points != rhs.points {return false}
    if lhs.fenceType != rhs.fenceType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_Geofence_Polygon.FenceType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "FENCE_TYPE_INCLUSION"),
    1: .same(proto: "FENCE_TYPE_EXCLUSION"),
  ]
}

extension Mavsdk_Rpc_Geofence_UploadGeofenceRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".UploadGeofenceRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "polygons"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.polygons) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.polygons.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.polygons, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_Geofence_UploadGeofenceRequest, rhs: Mavsdk_Rpc_Geofence_UploadGeofenceRequest) -> Bool {
    if lhs.polygons != rhs.polygons {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_Geofence_UploadGeofenceResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".UploadGeofenceResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "geofence_result"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._geofenceResult) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._geofenceResult {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_Geofence_UploadGeofenceResponse, rhs: Mavsdk_Rpc_Geofence_UploadGeofenceResponse) -> Bool {
    if lhs._geofenceResult != rhs._geofenceResult {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_Geofence_ClearGeofenceRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ClearGeofenceRequest"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_Geofence_ClearGeofenceRequest, rhs: Mavsdk_Rpc_Geofence_ClearGeofenceRequest) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_Geofence_ClearGeofenceResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ClearGeofenceResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "geofence_result"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._geofenceResult) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._geofenceResult {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_Geofence_ClearGeofenceResponse, rhs: Mavsdk_Rpc_Geofence_ClearGeofenceResponse) -> Bool {
    if lhs._geofenceResult != rhs._geofenceResult {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_Geofence_GeofenceResult: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GeofenceResult"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "result"),
    2: .standard(proto: "result_str"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.result) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.resultStr) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.result != .unknown {
      try visitor.visitSingularEnumField(value: self.result, fieldNumber: 1)
    }
    if !self.resultStr.isEmpty {
      try visitor.visitSingularStringField(value: self.resultStr, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_Geofence_GeofenceResult, rhs: Mavsdk_Rpc_Geofence_GeofenceResult) -> Bool {
    if lhs.result != rhs.result {return false}
    if lhs.resultStr != rhs.resultStr {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_Geofence_GeofenceResult.Result: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "RESULT_UNKNOWN"),
    1: .same(proto: "RESULT_SUCCESS"),
    2: .same(proto: "RESULT_ERROR"),
    3: .same(proto: "RESULT_TOO_MANY_GEOFENCE_ITEMS"),
    4: .same(proto: "RESULT_BUSY"),
    5: .same(proto: "RESULT_TIMEOUT"),
    6: .same(proto: "RESULT_INVALID_ARGUMENT"),
    7: .same(proto: "RESULT_NO_SYSTEM"),
  ]
}
