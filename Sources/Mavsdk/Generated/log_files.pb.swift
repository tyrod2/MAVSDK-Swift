// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: log_files.proto
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

struct Mavsdk_Rpc_LogFiles_GetEntriesRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Mavsdk_Rpc_LogFiles_GetEntriesResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var logFilesResult: Mavsdk_Rpc_LogFiles_LogFilesResult {
    get {return _logFilesResult ?? Mavsdk_Rpc_LogFiles_LogFilesResult()}
    set {_logFilesResult = newValue}
  }
  /// Returns true if `logFilesResult` has been explicitly set.
  var hasLogFilesResult: Bool {return self._logFilesResult != nil}
  /// Clears the value of `logFilesResult`. Subsequent reads from it will return its default value.
  mutating func clearLogFilesResult() {self._logFilesResult = nil}

  /// List of entries
  var entries: [Mavsdk_Rpc_LogFiles_Entry] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _logFilesResult: Mavsdk_Rpc_LogFiles_LogFilesResult? = nil
}

struct Mavsdk_Rpc_LogFiles_SubscribeDownloadLogFileRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Entry of the log file to download.
  var entry: Mavsdk_Rpc_LogFiles_Entry {
    get {return _entry ?? Mavsdk_Rpc_LogFiles_Entry()}
    set {_entry = newValue}
  }
  /// Returns true if `entry` has been explicitly set.
  var hasEntry: Bool {return self._entry != nil}
  /// Clears the value of `entry`. Subsequent reads from it will return its default value.
  mutating func clearEntry() {self._entry = nil}

  /// Path of where to download log file to.
  var path: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _entry: Mavsdk_Rpc_LogFiles_Entry? = nil
}

struct Mavsdk_Rpc_LogFiles_DownloadLogFileResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var logFilesResult: Mavsdk_Rpc_LogFiles_LogFilesResult {
    get {return _logFilesResult ?? Mavsdk_Rpc_LogFiles_LogFilesResult()}
    set {_logFilesResult = newValue}
  }
  /// Returns true if `logFilesResult` has been explicitly set.
  var hasLogFilesResult: Bool {return self._logFilesResult != nil}
  /// Clears the value of `logFilesResult`. Subsequent reads from it will return its default value.
  mutating func clearLogFilesResult() {self._logFilesResult = nil}

  /// Progress if result is progress
  var progress: Mavsdk_Rpc_LogFiles_ProgressData {
    get {return _progress ?? Mavsdk_Rpc_LogFiles_ProgressData()}
    set {_progress = newValue}
  }
  /// Returns true if `progress` has been explicitly set.
  var hasProgress: Bool {return self._progress != nil}
  /// Clears the value of `progress`. Subsequent reads from it will return its default value.
  mutating func clearProgress() {self._progress = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _logFilesResult: Mavsdk_Rpc_LogFiles_LogFilesResult? = nil
  fileprivate var _progress: Mavsdk_Rpc_LogFiles_ProgressData? = nil
}

struct Mavsdk_Rpc_LogFiles_DownloadLogFileRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Entry of the log file to download.
  var entry: Mavsdk_Rpc_LogFiles_Entry {
    get {return _entry ?? Mavsdk_Rpc_LogFiles_Entry()}
    set {_entry = newValue}
  }
  /// Returns true if `entry` has been explicitly set.
  var hasEntry: Bool {return self._entry != nil}
  /// Clears the value of `entry`. Subsequent reads from it will return its default value.
  mutating func clearEntry() {self._entry = nil}

  /// Path of where to download log file to.
  var path: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _entry: Mavsdk_Rpc_LogFiles_Entry? = nil
}

struct Mavsdk_Rpc_LogFiles_EraseAllLogFilesRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Mavsdk_Rpc_LogFiles_EraseAllLogFilesResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var logFilesResult: Mavsdk_Rpc_LogFiles_LogFilesResult {
    get {return _logFilesResult ?? Mavsdk_Rpc_LogFiles_LogFilesResult()}
    set {_logFilesResult = newValue}
  }
  /// Returns true if `logFilesResult` has been explicitly set.
  var hasLogFilesResult: Bool {return self._logFilesResult != nil}
  /// Clears the value of `logFilesResult`. Subsequent reads from it will return its default value.
  mutating func clearLogFilesResult() {self._logFilesResult = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _logFilesResult: Mavsdk_Rpc_LogFiles_LogFilesResult? = nil
}

///
/// Progress data coming when downloading a log file.
struct Mavsdk_Rpc_LogFiles_ProgressData {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Progress from 0 to 1
  var progress: Float = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Log file entry type.
struct Mavsdk_Rpc_LogFiles_Entry {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// ID of the log file, to specify a file to be downloaded
  var id: UInt32 = 0

  /// Date of the log file in UTC in ISO 8601 format "yyyy-mm-ddThh:mm:ssZ"
  var date: String = String()

  /// Size of file in bytes
  var sizeBytes: UInt32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Result type.
struct Mavsdk_Rpc_LogFiles_LogFilesResult {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Result enum value
  var result: Mavsdk_Rpc_LogFiles_LogFilesResult.Result = .unknown

  /// Human-readable English string describing the result
  var resultStr: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Possible results returned for calibration commands
  enum Result: SwiftProtobuf.Enum {
    typealias RawValue = Int

    /// Unknown result
    case unknown // = 0

    /// Request succeeded
    case success // = 1

    /// Progress update
    case next // = 2

    /// No log files found
    case noLogfiles // = 3

    /// A timeout happened
    case timeout // = 4

    /// Invalid argument
    case invalidArgument // = 5

    /// File open failed
    case fileOpenFailed // = 6

    /// No system is connected
    case noSystem // = 7
    case UNRECOGNIZED(Int)

    init() {
      self = .unknown
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 1: self = .success
      case 2: self = .next
      case 3: self = .noLogfiles
      case 4: self = .timeout
      case 5: self = .invalidArgument
      case 6: self = .fileOpenFailed
      case 7: self = .noSystem
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .unknown: return 0
      case .success: return 1
      case .next: return 2
      case .noLogfiles: return 3
      case .timeout: return 4
      case .invalidArgument: return 5
      case .fileOpenFailed: return 6
      case .noSystem: return 7
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}
}

#if swift(>=4.2)

extension Mavsdk_Rpc_LogFiles_LogFilesResult.Result: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Mavsdk_Rpc_LogFiles_LogFilesResult.Result] = [
    .unknown,
    .success,
    .next,
    .noLogfiles,
    .timeout,
    .invalidArgument,
    .fileOpenFailed,
    .noSystem,
  ]
}

#endif  // swift(>=4.2)

#if swift(>=5.5) && canImport(_Concurrency)
extension Mavsdk_Rpc_LogFiles_GetEntriesRequest: @unchecked Sendable {}
extension Mavsdk_Rpc_LogFiles_GetEntriesResponse: @unchecked Sendable {}
extension Mavsdk_Rpc_LogFiles_SubscribeDownloadLogFileRequest: @unchecked Sendable {}
extension Mavsdk_Rpc_LogFiles_DownloadLogFileResponse: @unchecked Sendable {}
extension Mavsdk_Rpc_LogFiles_DownloadLogFileRequest: @unchecked Sendable {}
extension Mavsdk_Rpc_LogFiles_EraseAllLogFilesRequest: @unchecked Sendable {}
extension Mavsdk_Rpc_LogFiles_EraseAllLogFilesResponse: @unchecked Sendable {}
extension Mavsdk_Rpc_LogFiles_ProgressData: @unchecked Sendable {}
extension Mavsdk_Rpc_LogFiles_Entry: @unchecked Sendable {}
extension Mavsdk_Rpc_LogFiles_LogFilesResult: @unchecked Sendable {}
extension Mavsdk_Rpc_LogFiles_LogFilesResult.Result: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "mavsdk.rpc.log_files"

extension Mavsdk_Rpc_LogFiles_GetEntriesRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetEntriesRequest"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_LogFiles_GetEntriesRequest, rhs: Mavsdk_Rpc_LogFiles_GetEntriesRequest) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_LogFiles_GetEntriesResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetEntriesResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "log_files_result"),
    2: .same(proto: "entries"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._logFilesResult) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.entries) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._logFilesResult {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.entries.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.entries, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_LogFiles_GetEntriesResponse, rhs: Mavsdk_Rpc_LogFiles_GetEntriesResponse) -> Bool {
    if lhs._logFilesResult != rhs._logFilesResult {return false}
    if lhs.entries != rhs.entries {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_LogFiles_SubscribeDownloadLogFileRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SubscribeDownloadLogFileRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "entry"),
    2: .same(proto: "path"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._entry) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.path) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._entry {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.path.isEmpty {
      try visitor.visitSingularStringField(value: self.path, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_LogFiles_SubscribeDownloadLogFileRequest, rhs: Mavsdk_Rpc_LogFiles_SubscribeDownloadLogFileRequest) -> Bool {
    if lhs._entry != rhs._entry {return false}
    if lhs.path != rhs.path {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_LogFiles_DownloadLogFileResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".DownloadLogFileResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "log_files_result"),
    2: .same(proto: "progress"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._logFilesResult) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._progress) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._logFilesResult {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._progress {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_LogFiles_DownloadLogFileResponse, rhs: Mavsdk_Rpc_LogFiles_DownloadLogFileResponse) -> Bool {
    if lhs._logFilesResult != rhs._logFilesResult {return false}
    if lhs._progress != rhs._progress {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_LogFiles_DownloadLogFileRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".DownloadLogFileRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "entry"),
    2: .same(proto: "path"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._entry) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.path) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._entry {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.path.isEmpty {
      try visitor.visitSingularStringField(value: self.path, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_LogFiles_DownloadLogFileRequest, rhs: Mavsdk_Rpc_LogFiles_DownloadLogFileRequest) -> Bool {
    if lhs._entry != rhs._entry {return false}
    if lhs.path != rhs.path {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_LogFiles_EraseAllLogFilesRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".EraseAllLogFilesRequest"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_LogFiles_EraseAllLogFilesRequest, rhs: Mavsdk_Rpc_LogFiles_EraseAllLogFilesRequest) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_LogFiles_EraseAllLogFilesResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".EraseAllLogFilesResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "log_files_result"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._logFilesResult) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._logFilesResult {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_LogFiles_EraseAllLogFilesResponse, rhs: Mavsdk_Rpc_LogFiles_EraseAllLogFilesResponse) -> Bool {
    if lhs._logFilesResult != rhs._logFilesResult {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_LogFiles_ProgressData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ProgressData"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "progress"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFloatField(value: &self.progress) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.progress != 0 {
      try visitor.visitSingularFloatField(value: self.progress, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_LogFiles_ProgressData, rhs: Mavsdk_Rpc_LogFiles_ProgressData) -> Bool {
    if lhs.progress != rhs.progress {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_LogFiles_Entry: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Entry"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "date"),
    3: .standard(proto: "size_bytes"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.date) }()
      case 3: try { try decoder.decodeSingularUInt32Field(value: &self.sizeBytes) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularUInt32Field(value: self.id, fieldNumber: 1)
    }
    if !self.date.isEmpty {
      try visitor.visitSingularStringField(value: self.date, fieldNumber: 2)
    }
    if self.sizeBytes != 0 {
      try visitor.visitSingularUInt32Field(value: self.sizeBytes, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Mavsdk_Rpc_LogFiles_Entry, rhs: Mavsdk_Rpc_LogFiles_Entry) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.date != rhs.date {return false}
    if lhs.sizeBytes != rhs.sizeBytes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_LogFiles_LogFilesResult: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".LogFilesResult"
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

  static func ==(lhs: Mavsdk_Rpc_LogFiles_LogFilesResult, rhs: Mavsdk_Rpc_LogFiles_LogFilesResult) -> Bool {
    if lhs.result != rhs.result {return false}
    if lhs.resultStr != rhs.resultStr {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Mavsdk_Rpc_LogFiles_LogFilesResult.Result: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "RESULT_UNKNOWN"),
    1: .same(proto: "RESULT_SUCCESS"),
    2: .same(proto: "RESULT_NEXT"),
    3: .same(proto: "RESULT_NO_LOGFILES"),
    4: .same(proto: "RESULT_TIMEOUT"),
    5: .same(proto: "RESULT_INVALID_ARGUMENT"),
    6: .same(proto: "RESULT_FILE_OPEN_FAILED"),
    7: .same(proto: "RESULT_NO_SYSTEM"),
  ]
}
