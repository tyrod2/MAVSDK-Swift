//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: telemetry_server.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf


///
/// Allow users to provide vehicle telemetry and state information
/// (e.g. battery, GPS, RC connection, flight mode etc.) and set telemetry update rates.
///
/// Usage: instantiate `Mavsdk_Rpc_TelemetryServer_TelemetryServerServiceClient`, then call methods of this protocol to make API calls.
internal protocol Mavsdk_Rpc_TelemetryServer_TelemetryServerServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Mavsdk_Rpc_TelemetryServer_TelemetryServerServiceClientInterceptorFactoryProtocol? { get }

  func publishPosition(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishPositionRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishPositionRequest, Mavsdk_Rpc_TelemetryServer_PublishPositionResponse>

  func publishHome(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishHomeRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishHomeRequest, Mavsdk_Rpc_TelemetryServer_PublishHomeResponse>

  func publishArmed(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishArmedRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishArmedRequest, Mavsdk_Rpc_TelemetryServer_PublishArmedResponse>

  func publishRawGps(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishRawGpsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishRawGpsRequest, Mavsdk_Rpc_TelemetryServer_PublishRawGpsResponse>

  func publishBattery(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishBatteryRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishBatteryRequest, Mavsdk_Rpc_TelemetryServer_PublishBatteryResponse>

  func publishFlightMode(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishFlightModeRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishFlightModeRequest, Mavsdk_Rpc_TelemetryServer_PublishFlightModeResponse>

  func publishHealth(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishHealthRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishHealthRequest, Mavsdk_Rpc_TelemetryServer_PublishHealthResponse>

  func publishStatusText(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishStatusTextRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishStatusTextRequest, Mavsdk_Rpc_TelemetryServer_PublishStatusTextResponse>

  func publishOdometry(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishOdometryRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishOdometryRequest, Mavsdk_Rpc_TelemetryServer_PublishOdometryResponse>

  func publishPositionVelocityNed(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishPositionVelocityNedRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishPositionVelocityNedRequest, Mavsdk_Rpc_TelemetryServer_PublishPositionVelocityNedResponse>

  func publishGroundTruth(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishGroundTruthRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishGroundTruthRequest, Mavsdk_Rpc_TelemetryServer_PublishGroundTruthResponse>

  func publishImu(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishImuRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishImuRequest, Mavsdk_Rpc_TelemetryServer_PublishImuResponse>

  func publishScaledImu(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishScaledImuRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishScaledImuRequest, Mavsdk_Rpc_TelemetryServer_PublishScaledImuResponse>

  func publishRawImu(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishRawImuRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishRawImuRequest, Mavsdk_Rpc_TelemetryServer_PublishRawImuResponse>

  func publishHealthAllOk(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishHealthAllOkRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishHealthAllOkRequest, Mavsdk_Rpc_TelemetryServer_PublishHealthAllOkResponse>

  func publishUnixEpochTime(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishUnixEpochTimeRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishUnixEpochTimeRequest, Mavsdk_Rpc_TelemetryServer_PublishUnixEpochTimeResponse>
}

extension Mavsdk_Rpc_TelemetryServer_TelemetryServerServiceClientProtocol {
  internal var serviceName: String {
    return "mavsdk.rpc.telemetry_server.TelemetryServerService"
  }

  /// Publish to 'position' updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to PublishPosition.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func publishPosition(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishPositionRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishPositionRequest, Mavsdk_Rpc_TelemetryServer_PublishPositionResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.telemetry_server.TelemetryServerService/PublishPosition",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePublishPositionInterceptors() ?? []
    )
  }

  /// Publish to 'home position' updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to PublishHome.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func publishHome(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishHomeRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishHomeRequest, Mavsdk_Rpc_TelemetryServer_PublishHomeResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.telemetry_server.TelemetryServerService/PublishHome",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePublishHomeInterceptors() ?? []
    )
  }

  /// Publish to armed updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to PublishArmed.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func publishArmed(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishArmedRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishArmedRequest, Mavsdk_Rpc_TelemetryServer_PublishArmedResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.telemetry_server.TelemetryServerService/PublishArmed",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePublishArmedInterceptors() ?? []
    )
  }

  /// Publish to 'Raw GPS' updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to PublishRawGps.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func publishRawGps(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishRawGpsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishRawGpsRequest, Mavsdk_Rpc_TelemetryServer_PublishRawGpsResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.telemetry_server.TelemetryServerService/PublishRawGps",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePublishRawGpsInterceptors() ?? []
    )
  }

  /// Publish to 'battery' updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to PublishBattery.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func publishBattery(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishBatteryRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishBatteryRequest, Mavsdk_Rpc_TelemetryServer_PublishBatteryResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.telemetry_server.TelemetryServerService/PublishBattery",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePublishBatteryInterceptors() ?? []
    )
  }

  /// Publish to 'flight mode' updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to PublishFlightMode.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func publishFlightMode(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishFlightModeRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishFlightModeRequest, Mavsdk_Rpc_TelemetryServer_PublishFlightModeResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.telemetry_server.TelemetryServerService/PublishFlightMode",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePublishFlightModeInterceptors() ?? []
    )
  }

  /// Publish to 'health' updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to PublishHealth.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func publishHealth(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishHealthRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishHealthRequest, Mavsdk_Rpc_TelemetryServer_PublishHealthResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.telemetry_server.TelemetryServerService/PublishHealth",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePublishHealthInterceptors() ?? []
    )
  }

  /// Publish to 'status text' updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to PublishStatusText.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func publishStatusText(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishStatusTextRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishStatusTextRequest, Mavsdk_Rpc_TelemetryServer_PublishStatusTextResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.telemetry_server.TelemetryServerService/PublishStatusText",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePublishStatusTextInterceptors() ?? []
    )
  }

  /// Publish to 'odometry' updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to PublishOdometry.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func publishOdometry(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishOdometryRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishOdometryRequest, Mavsdk_Rpc_TelemetryServer_PublishOdometryResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.telemetry_server.TelemetryServerService/PublishOdometry",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePublishOdometryInterceptors() ?? []
    )
  }

  /// Publish to 'position velocity' updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to PublishPositionVelocityNed.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func publishPositionVelocityNed(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishPositionVelocityNedRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishPositionVelocityNedRequest, Mavsdk_Rpc_TelemetryServer_PublishPositionVelocityNedResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.telemetry_server.TelemetryServerService/PublishPositionVelocityNed",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePublishPositionVelocityNedInterceptors() ?? []
    )
  }

  /// Publish to 'ground truth' updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to PublishGroundTruth.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func publishGroundTruth(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishGroundTruthRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishGroundTruthRequest, Mavsdk_Rpc_TelemetryServer_PublishGroundTruthResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.telemetry_server.TelemetryServerService/PublishGroundTruth",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePublishGroundTruthInterceptors() ?? []
    )
  }

  /// Publish to 'IMU' updates (in SI units in NED body frame).
  ///
  /// - Parameters:
  ///   - request: Request to send to PublishImu.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func publishImu(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishImuRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishImuRequest, Mavsdk_Rpc_TelemetryServer_PublishImuResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.telemetry_server.TelemetryServerService/PublishImu",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePublishImuInterceptors() ?? []
    )
  }

  /// Publish to 'Scaled IMU' updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to PublishScaledImu.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func publishScaledImu(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishScaledImuRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishScaledImuRequest, Mavsdk_Rpc_TelemetryServer_PublishScaledImuResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.telemetry_server.TelemetryServerService/PublishScaledImu",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePublishScaledImuInterceptors() ?? []
    )
  }

  /// Publish to 'Raw IMU' updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to PublishRawImu.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func publishRawImu(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishRawImuRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishRawImuRequest, Mavsdk_Rpc_TelemetryServer_PublishRawImuResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.telemetry_server.TelemetryServerService/PublishRawImu",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePublishRawImuInterceptors() ?? []
    )
  }

  /// Publish to 'HealthAllOk' updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to PublishHealthAllOk.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func publishHealthAllOk(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishHealthAllOkRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishHealthAllOkRequest, Mavsdk_Rpc_TelemetryServer_PublishHealthAllOkResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.telemetry_server.TelemetryServerService/PublishHealthAllOk",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePublishHealthAllOkInterceptors() ?? []
    )
  }

  /// Publish to 'unix epoch time' updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to PublishUnixEpochTime.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func publishUnixEpochTime(
    _ request: Mavsdk_Rpc_TelemetryServer_PublishUnixEpochTimeRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Mavsdk_Rpc_TelemetryServer_PublishUnixEpochTimeRequest, Mavsdk_Rpc_TelemetryServer_PublishUnixEpochTimeResponse> {
    return self.makeUnaryCall(
      path: "/mavsdk.rpc.telemetry_server.TelemetryServerService/PublishUnixEpochTime",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makePublishUnixEpochTimeInterceptors() ?? []
    )
  }
}

internal protocol Mavsdk_Rpc_TelemetryServer_TelemetryServerServiceClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'publishPosition'.
  func makePublishPositionInterceptors() -> [ClientInterceptor<Mavsdk_Rpc_TelemetryServer_PublishPositionRequest, Mavsdk_Rpc_TelemetryServer_PublishPositionResponse>]

  /// - Returns: Interceptors to use when invoking 'publishHome'.
  func makePublishHomeInterceptors() -> [ClientInterceptor<Mavsdk_Rpc_TelemetryServer_PublishHomeRequest, Mavsdk_Rpc_TelemetryServer_PublishHomeResponse>]

  /// - Returns: Interceptors to use when invoking 'publishArmed'.
  func makePublishArmedInterceptors() -> [ClientInterceptor<Mavsdk_Rpc_TelemetryServer_PublishArmedRequest, Mavsdk_Rpc_TelemetryServer_PublishArmedResponse>]

  /// - Returns: Interceptors to use when invoking 'publishRawGps'.
  func makePublishRawGpsInterceptors() -> [ClientInterceptor<Mavsdk_Rpc_TelemetryServer_PublishRawGpsRequest, Mavsdk_Rpc_TelemetryServer_PublishRawGpsResponse>]

  /// - Returns: Interceptors to use when invoking 'publishBattery'.
  func makePublishBatteryInterceptors() -> [ClientInterceptor<Mavsdk_Rpc_TelemetryServer_PublishBatteryRequest, Mavsdk_Rpc_TelemetryServer_PublishBatteryResponse>]

  /// - Returns: Interceptors to use when invoking 'publishFlightMode'.
  func makePublishFlightModeInterceptors() -> [ClientInterceptor<Mavsdk_Rpc_TelemetryServer_PublishFlightModeRequest, Mavsdk_Rpc_TelemetryServer_PublishFlightModeResponse>]

  /// - Returns: Interceptors to use when invoking 'publishHealth'.
  func makePublishHealthInterceptors() -> [ClientInterceptor<Mavsdk_Rpc_TelemetryServer_PublishHealthRequest, Mavsdk_Rpc_TelemetryServer_PublishHealthResponse>]

  /// - Returns: Interceptors to use when invoking 'publishStatusText'.
  func makePublishStatusTextInterceptors() -> [ClientInterceptor<Mavsdk_Rpc_TelemetryServer_PublishStatusTextRequest, Mavsdk_Rpc_TelemetryServer_PublishStatusTextResponse>]

  /// - Returns: Interceptors to use when invoking 'publishOdometry'.
  func makePublishOdometryInterceptors() -> [ClientInterceptor<Mavsdk_Rpc_TelemetryServer_PublishOdometryRequest, Mavsdk_Rpc_TelemetryServer_PublishOdometryResponse>]

  /// - Returns: Interceptors to use when invoking 'publishPositionVelocityNed'.
  func makePublishPositionVelocityNedInterceptors() -> [ClientInterceptor<Mavsdk_Rpc_TelemetryServer_PublishPositionVelocityNedRequest, Mavsdk_Rpc_TelemetryServer_PublishPositionVelocityNedResponse>]

  /// - Returns: Interceptors to use when invoking 'publishGroundTruth'.
  func makePublishGroundTruthInterceptors() -> [ClientInterceptor<Mavsdk_Rpc_TelemetryServer_PublishGroundTruthRequest, Mavsdk_Rpc_TelemetryServer_PublishGroundTruthResponse>]

  /// - Returns: Interceptors to use when invoking 'publishImu'.
  func makePublishImuInterceptors() -> [ClientInterceptor<Mavsdk_Rpc_TelemetryServer_PublishImuRequest, Mavsdk_Rpc_TelemetryServer_PublishImuResponse>]

  /// - Returns: Interceptors to use when invoking 'publishScaledImu'.
  func makePublishScaledImuInterceptors() -> [ClientInterceptor<Mavsdk_Rpc_TelemetryServer_PublishScaledImuRequest, Mavsdk_Rpc_TelemetryServer_PublishScaledImuResponse>]

  /// - Returns: Interceptors to use when invoking 'publishRawImu'.
  func makePublishRawImuInterceptors() -> [ClientInterceptor<Mavsdk_Rpc_TelemetryServer_PublishRawImuRequest, Mavsdk_Rpc_TelemetryServer_PublishRawImuResponse>]

  /// - Returns: Interceptors to use when invoking 'publishHealthAllOk'.
  func makePublishHealthAllOkInterceptors() -> [ClientInterceptor<Mavsdk_Rpc_TelemetryServer_PublishHealthAllOkRequest, Mavsdk_Rpc_TelemetryServer_PublishHealthAllOkResponse>]

  /// - Returns: Interceptors to use when invoking 'publishUnixEpochTime'.
  func makePublishUnixEpochTimeInterceptors() -> [ClientInterceptor<Mavsdk_Rpc_TelemetryServer_PublishUnixEpochTimeRequest, Mavsdk_Rpc_TelemetryServer_PublishUnixEpochTimeResponse>]
}

internal final class Mavsdk_Rpc_TelemetryServer_TelemetryServerServiceClient: Mavsdk_Rpc_TelemetryServer_TelemetryServerServiceClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Mavsdk_Rpc_TelemetryServer_TelemetryServerServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the mavsdk.rpc.telemetry_server.TelemetryServerService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Mavsdk_Rpc_TelemetryServer_TelemetryServerServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

///
/// Allow users to provide vehicle telemetry and state information
/// (e.g. battery, GPS, RC connection, flight mode etc.) and set telemetry update rates.
///
/// To build a server, implement a class that conforms to this protocol.
internal protocol Mavsdk_Rpc_TelemetryServer_TelemetryServerServiceProvider: CallHandlerProvider {
  var interceptors: Mavsdk_Rpc_TelemetryServer_TelemetryServerServiceServerInterceptorFactoryProtocol? { get }

  /// Publish to 'position' updates.
  func publishPosition(request: Mavsdk_Rpc_TelemetryServer_PublishPositionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_TelemetryServer_PublishPositionResponse>

  /// Publish to 'home position' updates.
  func publishHome(request: Mavsdk_Rpc_TelemetryServer_PublishHomeRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_TelemetryServer_PublishHomeResponse>

  /// Publish to armed updates.
  func publishArmed(request: Mavsdk_Rpc_TelemetryServer_PublishArmedRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_TelemetryServer_PublishArmedResponse>

  /// Publish to 'Raw GPS' updates.
  func publishRawGps(request: Mavsdk_Rpc_TelemetryServer_PublishRawGpsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_TelemetryServer_PublishRawGpsResponse>

  /// Publish to 'battery' updates.
  func publishBattery(request: Mavsdk_Rpc_TelemetryServer_PublishBatteryRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_TelemetryServer_PublishBatteryResponse>

  /// Publish to 'flight mode' updates.
  func publishFlightMode(request: Mavsdk_Rpc_TelemetryServer_PublishFlightModeRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_TelemetryServer_PublishFlightModeResponse>

  /// Publish to 'health' updates.
  func publishHealth(request: Mavsdk_Rpc_TelemetryServer_PublishHealthRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_TelemetryServer_PublishHealthResponse>

  /// Publish to 'status text' updates.
  func publishStatusText(request: Mavsdk_Rpc_TelemetryServer_PublishStatusTextRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_TelemetryServer_PublishStatusTextResponse>

  /// Publish to 'odometry' updates.
  func publishOdometry(request: Mavsdk_Rpc_TelemetryServer_PublishOdometryRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_TelemetryServer_PublishOdometryResponse>

  /// Publish to 'position velocity' updates.
  func publishPositionVelocityNed(request: Mavsdk_Rpc_TelemetryServer_PublishPositionVelocityNedRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_TelemetryServer_PublishPositionVelocityNedResponse>

  /// Publish to 'ground truth' updates.
  func publishGroundTruth(request: Mavsdk_Rpc_TelemetryServer_PublishGroundTruthRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_TelemetryServer_PublishGroundTruthResponse>

  /// Publish to 'IMU' updates (in SI units in NED body frame).
  func publishImu(request: Mavsdk_Rpc_TelemetryServer_PublishImuRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_TelemetryServer_PublishImuResponse>

  /// Publish to 'Scaled IMU' updates.
  func publishScaledImu(request: Mavsdk_Rpc_TelemetryServer_PublishScaledImuRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_TelemetryServer_PublishScaledImuResponse>

  /// Publish to 'Raw IMU' updates.
  func publishRawImu(request: Mavsdk_Rpc_TelemetryServer_PublishRawImuRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_TelemetryServer_PublishRawImuResponse>

  /// Publish to 'HealthAllOk' updates.
  func publishHealthAllOk(request: Mavsdk_Rpc_TelemetryServer_PublishHealthAllOkRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_TelemetryServer_PublishHealthAllOkResponse>

  /// Publish to 'unix epoch time' updates.
  func publishUnixEpochTime(request: Mavsdk_Rpc_TelemetryServer_PublishUnixEpochTimeRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Mavsdk_Rpc_TelemetryServer_PublishUnixEpochTimeResponse>
}

extension Mavsdk_Rpc_TelemetryServer_TelemetryServerServiceProvider {
  internal var serviceName: Substring { return "mavsdk.rpc.telemetry_server.TelemetryServerService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "PublishPosition":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Mavsdk_Rpc_TelemetryServer_PublishPositionRequest>(),
        responseSerializer: ProtobufSerializer<Mavsdk_Rpc_TelemetryServer_PublishPositionResponse>(),
        interceptors: self.interceptors?.makePublishPositionInterceptors() ?? [],
        userFunction: self.publishPosition(request:context:)
      )

    case "PublishHome":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Mavsdk_Rpc_TelemetryServer_PublishHomeRequest>(),
        responseSerializer: ProtobufSerializer<Mavsdk_Rpc_TelemetryServer_PublishHomeResponse>(),
        interceptors: self.interceptors?.makePublishHomeInterceptors() ?? [],
        userFunction: self.publishHome(request:context:)
      )

    case "PublishArmed":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Mavsdk_Rpc_TelemetryServer_PublishArmedRequest>(),
        responseSerializer: ProtobufSerializer<Mavsdk_Rpc_TelemetryServer_PublishArmedResponse>(),
        interceptors: self.interceptors?.makePublishArmedInterceptors() ?? [],
        userFunction: self.publishArmed(request:context:)
      )

    case "PublishRawGps":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Mavsdk_Rpc_TelemetryServer_PublishRawGpsRequest>(),
        responseSerializer: ProtobufSerializer<Mavsdk_Rpc_TelemetryServer_PublishRawGpsResponse>(),
        interceptors: self.interceptors?.makePublishRawGpsInterceptors() ?? [],
        userFunction: self.publishRawGps(request:context:)
      )

    case "PublishBattery":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Mavsdk_Rpc_TelemetryServer_PublishBatteryRequest>(),
        responseSerializer: ProtobufSerializer<Mavsdk_Rpc_TelemetryServer_PublishBatteryResponse>(),
        interceptors: self.interceptors?.makePublishBatteryInterceptors() ?? [],
        userFunction: self.publishBattery(request:context:)
      )

    case "PublishFlightMode":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Mavsdk_Rpc_TelemetryServer_PublishFlightModeRequest>(),
        responseSerializer: ProtobufSerializer<Mavsdk_Rpc_TelemetryServer_PublishFlightModeResponse>(),
        interceptors: self.interceptors?.makePublishFlightModeInterceptors() ?? [],
        userFunction: self.publishFlightMode(request:context:)
      )

    case "PublishHealth":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Mavsdk_Rpc_TelemetryServer_PublishHealthRequest>(),
        responseSerializer: ProtobufSerializer<Mavsdk_Rpc_TelemetryServer_PublishHealthResponse>(),
        interceptors: self.interceptors?.makePublishHealthInterceptors() ?? [],
        userFunction: self.publishHealth(request:context:)
      )

    case "PublishStatusText":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Mavsdk_Rpc_TelemetryServer_PublishStatusTextRequest>(),
        responseSerializer: ProtobufSerializer<Mavsdk_Rpc_TelemetryServer_PublishStatusTextResponse>(),
        interceptors: self.interceptors?.makePublishStatusTextInterceptors() ?? [],
        userFunction: self.publishStatusText(request:context:)
      )

    case "PublishOdometry":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Mavsdk_Rpc_TelemetryServer_PublishOdometryRequest>(),
        responseSerializer: ProtobufSerializer<Mavsdk_Rpc_TelemetryServer_PublishOdometryResponse>(),
        interceptors: self.interceptors?.makePublishOdometryInterceptors() ?? [],
        userFunction: self.publishOdometry(request:context:)
      )

    case "PublishPositionVelocityNed":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Mavsdk_Rpc_TelemetryServer_PublishPositionVelocityNedRequest>(),
        responseSerializer: ProtobufSerializer<Mavsdk_Rpc_TelemetryServer_PublishPositionVelocityNedResponse>(),
        interceptors: self.interceptors?.makePublishPositionVelocityNedInterceptors() ?? [],
        userFunction: self.publishPositionVelocityNed(request:context:)
      )

    case "PublishGroundTruth":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Mavsdk_Rpc_TelemetryServer_PublishGroundTruthRequest>(),
        responseSerializer: ProtobufSerializer<Mavsdk_Rpc_TelemetryServer_PublishGroundTruthResponse>(),
        interceptors: self.interceptors?.makePublishGroundTruthInterceptors() ?? [],
        userFunction: self.publishGroundTruth(request:context:)
      )

    case "PublishImu":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Mavsdk_Rpc_TelemetryServer_PublishImuRequest>(),
        responseSerializer: ProtobufSerializer<Mavsdk_Rpc_TelemetryServer_PublishImuResponse>(),
        interceptors: self.interceptors?.makePublishImuInterceptors() ?? [],
        userFunction: self.publishImu(request:context:)
      )

    case "PublishScaledImu":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Mavsdk_Rpc_TelemetryServer_PublishScaledImuRequest>(),
        responseSerializer: ProtobufSerializer<Mavsdk_Rpc_TelemetryServer_PublishScaledImuResponse>(),
        interceptors: self.interceptors?.makePublishScaledImuInterceptors() ?? [],
        userFunction: self.publishScaledImu(request:context:)
      )

    case "PublishRawImu":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Mavsdk_Rpc_TelemetryServer_PublishRawImuRequest>(),
        responseSerializer: ProtobufSerializer<Mavsdk_Rpc_TelemetryServer_PublishRawImuResponse>(),
        interceptors: self.interceptors?.makePublishRawImuInterceptors() ?? [],
        userFunction: self.publishRawImu(request:context:)
      )

    case "PublishHealthAllOk":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Mavsdk_Rpc_TelemetryServer_PublishHealthAllOkRequest>(),
        responseSerializer: ProtobufSerializer<Mavsdk_Rpc_TelemetryServer_PublishHealthAllOkResponse>(),
        interceptors: self.interceptors?.makePublishHealthAllOkInterceptors() ?? [],
        userFunction: self.publishHealthAllOk(request:context:)
      )

    case "PublishUnixEpochTime":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Mavsdk_Rpc_TelemetryServer_PublishUnixEpochTimeRequest>(),
        responseSerializer: ProtobufSerializer<Mavsdk_Rpc_TelemetryServer_PublishUnixEpochTimeResponse>(),
        interceptors: self.interceptors?.makePublishUnixEpochTimeInterceptors() ?? [],
        userFunction: self.publishUnixEpochTime(request:context:)
      )

    default:
      return nil
    }
  }
}

internal protocol Mavsdk_Rpc_TelemetryServer_TelemetryServerServiceServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'publishPosition'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makePublishPositionInterceptors() -> [ServerInterceptor<Mavsdk_Rpc_TelemetryServer_PublishPositionRequest, Mavsdk_Rpc_TelemetryServer_PublishPositionResponse>]

  /// - Returns: Interceptors to use when handling 'publishHome'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makePublishHomeInterceptors() -> [ServerInterceptor<Mavsdk_Rpc_TelemetryServer_PublishHomeRequest, Mavsdk_Rpc_TelemetryServer_PublishHomeResponse>]

  /// - Returns: Interceptors to use when handling 'publishArmed'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makePublishArmedInterceptors() -> [ServerInterceptor<Mavsdk_Rpc_TelemetryServer_PublishArmedRequest, Mavsdk_Rpc_TelemetryServer_PublishArmedResponse>]

  /// - Returns: Interceptors to use when handling 'publishRawGps'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makePublishRawGpsInterceptors() -> [ServerInterceptor<Mavsdk_Rpc_TelemetryServer_PublishRawGpsRequest, Mavsdk_Rpc_TelemetryServer_PublishRawGpsResponse>]

  /// - Returns: Interceptors to use when handling 'publishBattery'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makePublishBatteryInterceptors() -> [ServerInterceptor<Mavsdk_Rpc_TelemetryServer_PublishBatteryRequest, Mavsdk_Rpc_TelemetryServer_PublishBatteryResponse>]

  /// - Returns: Interceptors to use when handling 'publishFlightMode'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makePublishFlightModeInterceptors() -> [ServerInterceptor<Mavsdk_Rpc_TelemetryServer_PublishFlightModeRequest, Mavsdk_Rpc_TelemetryServer_PublishFlightModeResponse>]

  /// - Returns: Interceptors to use when handling 'publishHealth'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makePublishHealthInterceptors() -> [ServerInterceptor<Mavsdk_Rpc_TelemetryServer_PublishHealthRequest, Mavsdk_Rpc_TelemetryServer_PublishHealthResponse>]

  /// - Returns: Interceptors to use when handling 'publishStatusText'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makePublishStatusTextInterceptors() -> [ServerInterceptor<Mavsdk_Rpc_TelemetryServer_PublishStatusTextRequest, Mavsdk_Rpc_TelemetryServer_PublishStatusTextResponse>]

  /// - Returns: Interceptors to use when handling 'publishOdometry'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makePublishOdometryInterceptors() -> [ServerInterceptor<Mavsdk_Rpc_TelemetryServer_PublishOdometryRequest, Mavsdk_Rpc_TelemetryServer_PublishOdometryResponse>]

  /// - Returns: Interceptors to use when handling 'publishPositionVelocityNed'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makePublishPositionVelocityNedInterceptors() -> [ServerInterceptor<Mavsdk_Rpc_TelemetryServer_PublishPositionVelocityNedRequest, Mavsdk_Rpc_TelemetryServer_PublishPositionVelocityNedResponse>]

  /// - Returns: Interceptors to use when handling 'publishGroundTruth'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makePublishGroundTruthInterceptors() -> [ServerInterceptor<Mavsdk_Rpc_TelemetryServer_PublishGroundTruthRequest, Mavsdk_Rpc_TelemetryServer_PublishGroundTruthResponse>]

  /// - Returns: Interceptors to use when handling 'publishImu'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makePublishImuInterceptors() -> [ServerInterceptor<Mavsdk_Rpc_TelemetryServer_PublishImuRequest, Mavsdk_Rpc_TelemetryServer_PublishImuResponse>]

  /// - Returns: Interceptors to use when handling 'publishScaledImu'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makePublishScaledImuInterceptors() -> [ServerInterceptor<Mavsdk_Rpc_TelemetryServer_PublishScaledImuRequest, Mavsdk_Rpc_TelemetryServer_PublishScaledImuResponse>]

  /// - Returns: Interceptors to use when handling 'publishRawImu'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makePublishRawImuInterceptors() -> [ServerInterceptor<Mavsdk_Rpc_TelemetryServer_PublishRawImuRequest, Mavsdk_Rpc_TelemetryServer_PublishRawImuResponse>]

  /// - Returns: Interceptors to use when handling 'publishHealthAllOk'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makePublishHealthAllOkInterceptors() -> [ServerInterceptor<Mavsdk_Rpc_TelemetryServer_PublishHealthAllOkRequest, Mavsdk_Rpc_TelemetryServer_PublishHealthAllOkResponse>]

  /// - Returns: Interceptors to use when handling 'publishUnixEpochTime'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makePublishUnixEpochTimeInterceptors() -> [ServerInterceptor<Mavsdk_Rpc_TelemetryServer_PublishUnixEpochTimeRequest, Mavsdk_Rpc_TelemetryServer_PublishUnixEpochTimeResponse>]
}
