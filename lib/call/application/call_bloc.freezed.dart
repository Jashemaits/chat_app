// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'call_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CallEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, String receiverId,
            String receiverName, CallType type)
        startCall,
    required TResult Function(CallModel incomingCall) receiveCall,
    required TResult Function(String roomId, CallModel activeCall) acceptCall,
    required TResult Function(String roomId, String callId) rejectCall,
    required TResult Function(String roomId) endCall,
    required TResult Function(CallStatus status) updateCallStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, String receiverId, String receiverName,
            CallType type)?
        startCall,
    TResult? Function(CallModel incomingCall)? receiveCall,
    TResult? Function(String roomId, CallModel activeCall)? acceptCall,
    TResult? Function(String roomId, String callId)? rejectCall,
    TResult? Function(String roomId)? endCall,
    TResult? Function(CallStatus status)? updateCallStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, String receiverId, String receiverName,
            CallType type)?
        startCall,
    TResult Function(CallModel incomingCall)? receiveCall,
    TResult Function(String roomId, CallModel activeCall)? acceptCall,
    TResult Function(String roomId, String callId)? rejectCall,
    TResult Function(String roomId)? endCall,
    TResult Function(CallStatus status)? updateCallStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartCall value) startCall,
    required TResult Function(ReceiveCall value) receiveCall,
    required TResult Function(AcceptCall value) acceptCall,
    required TResult Function(RejectCall value) rejectCall,
    required TResult Function(EndCall value) endCall,
    required TResult Function(UpdateCallStatus value) updateCallStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartCall value)? startCall,
    TResult? Function(ReceiveCall value)? receiveCall,
    TResult? Function(AcceptCall value)? acceptCall,
    TResult? Function(RejectCall value)? rejectCall,
    TResult? Function(EndCall value)? endCall,
    TResult? Function(UpdateCallStatus value)? updateCallStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartCall value)? startCall,
    TResult Function(ReceiveCall value)? receiveCall,
    TResult Function(AcceptCall value)? acceptCall,
    TResult Function(RejectCall value)? rejectCall,
    TResult Function(EndCall value)? endCall,
    TResult Function(UpdateCallStatus value)? updateCallStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallEventCopyWith<$Res> {
  factory $CallEventCopyWith(CallEvent value, $Res Function(CallEvent) then) =
      _$CallEventCopyWithImpl<$Res, CallEvent>;
}

/// @nodoc
class _$CallEventCopyWithImpl<$Res, $Val extends CallEvent>
    implements $CallEventCopyWith<$Res> {
  _$CallEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartCallImplCopyWith<$Res> {
  factory _$$StartCallImplCopyWith(
          _$StartCallImpl value, $Res Function(_$StartCallImpl) then) =
      __$$StartCallImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String roomId, String receiverId, String receiverName, CallType type});
}

/// @nodoc
class __$$StartCallImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$StartCallImpl>
    implements _$$StartCallImplCopyWith<$Res> {
  __$$StartCallImplCopyWithImpl(
      _$StartCallImpl _value, $Res Function(_$StartCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? receiverId = null,
    Object? receiverName = null,
    Object? type = null,
  }) {
    return _then(_$StartCallImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      receiverName: null == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CallType,
    ));
  }
}

/// @nodoc

class _$StartCallImpl implements StartCall {
  const _$StartCallImpl(
      {required this.roomId,
      required this.receiverId,
      required this.receiverName,
      required this.type});

  @override
  final String roomId;
  @override
  final String receiverId;
  @override
  final String receiverName;
  @override
  final CallType type;

  @override
  String toString() {
    return 'CallEvent.startCall(roomId: $roomId, receiverId: $receiverId, receiverName: $receiverName, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartCallImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.receiverName, receiverName) ||
                other.receiverName == receiverName) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, roomId, receiverId, receiverName, type);

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartCallImplCopyWith<_$StartCallImpl> get copyWith =>
      __$$StartCallImplCopyWithImpl<_$StartCallImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, String receiverId,
            String receiverName, CallType type)
        startCall,
    required TResult Function(CallModel incomingCall) receiveCall,
    required TResult Function(String roomId, CallModel activeCall) acceptCall,
    required TResult Function(String roomId, String callId) rejectCall,
    required TResult Function(String roomId) endCall,
    required TResult Function(CallStatus status) updateCallStatus,
  }) {
    return startCall(roomId, receiverId, receiverName, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, String receiverId, String receiverName,
            CallType type)?
        startCall,
    TResult? Function(CallModel incomingCall)? receiveCall,
    TResult? Function(String roomId, CallModel activeCall)? acceptCall,
    TResult? Function(String roomId, String callId)? rejectCall,
    TResult? Function(String roomId)? endCall,
    TResult? Function(CallStatus status)? updateCallStatus,
  }) {
    return startCall?.call(roomId, receiverId, receiverName, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, String receiverId, String receiverName,
            CallType type)?
        startCall,
    TResult Function(CallModel incomingCall)? receiveCall,
    TResult Function(String roomId, CallModel activeCall)? acceptCall,
    TResult Function(String roomId, String callId)? rejectCall,
    TResult Function(String roomId)? endCall,
    TResult Function(CallStatus status)? updateCallStatus,
    required TResult orElse(),
  }) {
    if (startCall != null) {
      return startCall(roomId, receiverId, receiverName, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartCall value) startCall,
    required TResult Function(ReceiveCall value) receiveCall,
    required TResult Function(AcceptCall value) acceptCall,
    required TResult Function(RejectCall value) rejectCall,
    required TResult Function(EndCall value) endCall,
    required TResult Function(UpdateCallStatus value) updateCallStatus,
  }) {
    return startCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartCall value)? startCall,
    TResult? Function(ReceiveCall value)? receiveCall,
    TResult? Function(AcceptCall value)? acceptCall,
    TResult? Function(RejectCall value)? rejectCall,
    TResult? Function(EndCall value)? endCall,
    TResult? Function(UpdateCallStatus value)? updateCallStatus,
  }) {
    return startCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartCall value)? startCall,
    TResult Function(ReceiveCall value)? receiveCall,
    TResult Function(AcceptCall value)? acceptCall,
    TResult Function(RejectCall value)? rejectCall,
    TResult Function(EndCall value)? endCall,
    TResult Function(UpdateCallStatus value)? updateCallStatus,
    required TResult orElse(),
  }) {
    if (startCall != null) {
      return startCall(this);
    }
    return orElse();
  }
}

abstract class StartCall implements CallEvent {
  const factory StartCall(
      {required final String roomId,
      required final String receiverId,
      required final String receiverName,
      required final CallType type}) = _$StartCallImpl;

  String get roomId;
  String get receiverId;
  String get receiverName;
  CallType get type;

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartCallImplCopyWith<_$StartCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiveCallImplCopyWith<$Res> {
  factory _$$ReceiveCallImplCopyWith(
          _$ReceiveCallImpl value, $Res Function(_$ReceiveCallImpl) then) =
      __$$ReceiveCallImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CallModel incomingCall});

  $CallModelCopyWith<$Res> get incomingCall;
}

/// @nodoc
class __$$ReceiveCallImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$ReceiveCallImpl>
    implements _$$ReceiveCallImplCopyWith<$Res> {
  __$$ReceiveCallImplCopyWithImpl(
      _$ReceiveCallImpl _value, $Res Function(_$ReceiveCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incomingCall = null,
  }) {
    return _then(_$ReceiveCallImpl(
      incomingCall: null == incomingCall
          ? _value.incomingCall
          : incomingCall // ignore: cast_nullable_to_non_nullable
              as CallModel,
    ));
  }

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CallModelCopyWith<$Res> get incomingCall {
    return $CallModelCopyWith<$Res>(_value.incomingCall, (value) {
      return _then(_value.copyWith(incomingCall: value));
    });
  }
}

/// @nodoc

class _$ReceiveCallImpl implements ReceiveCall {
  const _$ReceiveCallImpl({required this.incomingCall});

  @override
  final CallModel incomingCall;

  @override
  String toString() {
    return 'CallEvent.receiveCall(incomingCall: $incomingCall)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveCallImpl &&
            (identical(other.incomingCall, incomingCall) ||
                other.incomingCall == incomingCall));
  }

  @override
  int get hashCode => Object.hash(runtimeType, incomingCall);

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiveCallImplCopyWith<_$ReceiveCallImpl> get copyWith =>
      __$$ReceiveCallImplCopyWithImpl<_$ReceiveCallImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, String receiverId,
            String receiverName, CallType type)
        startCall,
    required TResult Function(CallModel incomingCall) receiveCall,
    required TResult Function(String roomId, CallModel activeCall) acceptCall,
    required TResult Function(String roomId, String callId) rejectCall,
    required TResult Function(String roomId) endCall,
    required TResult Function(CallStatus status) updateCallStatus,
  }) {
    return receiveCall(incomingCall);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, String receiverId, String receiverName,
            CallType type)?
        startCall,
    TResult? Function(CallModel incomingCall)? receiveCall,
    TResult? Function(String roomId, CallModel activeCall)? acceptCall,
    TResult? Function(String roomId, String callId)? rejectCall,
    TResult? Function(String roomId)? endCall,
    TResult? Function(CallStatus status)? updateCallStatus,
  }) {
    return receiveCall?.call(incomingCall);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, String receiverId, String receiverName,
            CallType type)?
        startCall,
    TResult Function(CallModel incomingCall)? receiveCall,
    TResult Function(String roomId, CallModel activeCall)? acceptCall,
    TResult Function(String roomId, String callId)? rejectCall,
    TResult Function(String roomId)? endCall,
    TResult Function(CallStatus status)? updateCallStatus,
    required TResult orElse(),
  }) {
    if (receiveCall != null) {
      return receiveCall(incomingCall);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartCall value) startCall,
    required TResult Function(ReceiveCall value) receiveCall,
    required TResult Function(AcceptCall value) acceptCall,
    required TResult Function(RejectCall value) rejectCall,
    required TResult Function(EndCall value) endCall,
    required TResult Function(UpdateCallStatus value) updateCallStatus,
  }) {
    return receiveCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartCall value)? startCall,
    TResult? Function(ReceiveCall value)? receiveCall,
    TResult? Function(AcceptCall value)? acceptCall,
    TResult? Function(RejectCall value)? rejectCall,
    TResult? Function(EndCall value)? endCall,
    TResult? Function(UpdateCallStatus value)? updateCallStatus,
  }) {
    return receiveCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartCall value)? startCall,
    TResult Function(ReceiveCall value)? receiveCall,
    TResult Function(AcceptCall value)? acceptCall,
    TResult Function(RejectCall value)? rejectCall,
    TResult Function(EndCall value)? endCall,
    TResult Function(UpdateCallStatus value)? updateCallStatus,
    required TResult orElse(),
  }) {
    if (receiveCall != null) {
      return receiveCall(this);
    }
    return orElse();
  }
}

abstract class ReceiveCall implements CallEvent {
  const factory ReceiveCall({required final CallModel incomingCall}) =
      _$ReceiveCallImpl;

  CallModel get incomingCall;

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiveCallImplCopyWith<_$ReceiveCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AcceptCallImplCopyWith<$Res> {
  factory _$$AcceptCallImplCopyWith(
          _$AcceptCallImpl value, $Res Function(_$AcceptCallImpl) then) =
      __$$AcceptCallImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId, CallModel activeCall});

  $CallModelCopyWith<$Res> get activeCall;
}

/// @nodoc
class __$$AcceptCallImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$AcceptCallImpl>
    implements _$$AcceptCallImplCopyWith<$Res> {
  __$$AcceptCallImplCopyWithImpl(
      _$AcceptCallImpl _value, $Res Function(_$AcceptCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? activeCall = null,
  }) {
    return _then(_$AcceptCallImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      activeCall: null == activeCall
          ? _value.activeCall
          : activeCall // ignore: cast_nullable_to_non_nullable
              as CallModel,
    ));
  }

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CallModelCopyWith<$Res> get activeCall {
    return $CallModelCopyWith<$Res>(_value.activeCall, (value) {
      return _then(_value.copyWith(activeCall: value));
    });
  }
}

/// @nodoc

class _$AcceptCallImpl implements AcceptCall {
  const _$AcceptCallImpl({required this.roomId, required this.activeCall});

  @override
  final String roomId;
  @override
  final CallModel activeCall;

  @override
  String toString() {
    return 'CallEvent.acceptCall(roomId: $roomId, activeCall: $activeCall)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptCallImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.activeCall, activeCall) ||
                other.activeCall == activeCall));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId, activeCall);

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptCallImplCopyWith<_$AcceptCallImpl> get copyWith =>
      __$$AcceptCallImplCopyWithImpl<_$AcceptCallImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, String receiverId,
            String receiverName, CallType type)
        startCall,
    required TResult Function(CallModel incomingCall) receiveCall,
    required TResult Function(String roomId, CallModel activeCall) acceptCall,
    required TResult Function(String roomId, String callId) rejectCall,
    required TResult Function(String roomId) endCall,
    required TResult Function(CallStatus status) updateCallStatus,
  }) {
    return acceptCall(roomId, activeCall);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, String receiverId, String receiverName,
            CallType type)?
        startCall,
    TResult? Function(CallModel incomingCall)? receiveCall,
    TResult? Function(String roomId, CallModel activeCall)? acceptCall,
    TResult? Function(String roomId, String callId)? rejectCall,
    TResult? Function(String roomId)? endCall,
    TResult? Function(CallStatus status)? updateCallStatus,
  }) {
    return acceptCall?.call(roomId, activeCall);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, String receiverId, String receiverName,
            CallType type)?
        startCall,
    TResult Function(CallModel incomingCall)? receiveCall,
    TResult Function(String roomId, CallModel activeCall)? acceptCall,
    TResult Function(String roomId, String callId)? rejectCall,
    TResult Function(String roomId)? endCall,
    TResult Function(CallStatus status)? updateCallStatus,
    required TResult orElse(),
  }) {
    if (acceptCall != null) {
      return acceptCall(roomId, activeCall);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartCall value) startCall,
    required TResult Function(ReceiveCall value) receiveCall,
    required TResult Function(AcceptCall value) acceptCall,
    required TResult Function(RejectCall value) rejectCall,
    required TResult Function(EndCall value) endCall,
    required TResult Function(UpdateCallStatus value) updateCallStatus,
  }) {
    return acceptCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartCall value)? startCall,
    TResult? Function(ReceiveCall value)? receiveCall,
    TResult? Function(AcceptCall value)? acceptCall,
    TResult? Function(RejectCall value)? rejectCall,
    TResult? Function(EndCall value)? endCall,
    TResult? Function(UpdateCallStatus value)? updateCallStatus,
  }) {
    return acceptCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartCall value)? startCall,
    TResult Function(ReceiveCall value)? receiveCall,
    TResult Function(AcceptCall value)? acceptCall,
    TResult Function(RejectCall value)? rejectCall,
    TResult Function(EndCall value)? endCall,
    TResult Function(UpdateCallStatus value)? updateCallStatus,
    required TResult orElse(),
  }) {
    if (acceptCall != null) {
      return acceptCall(this);
    }
    return orElse();
  }
}

abstract class AcceptCall implements CallEvent {
  const factory AcceptCall(
      {required final String roomId,
      required final CallModel activeCall}) = _$AcceptCallImpl;

  String get roomId;
  CallModel get activeCall;

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptCallImplCopyWith<_$AcceptCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RejectCallImplCopyWith<$Res> {
  factory _$$RejectCallImplCopyWith(
          _$RejectCallImpl value, $Res Function(_$RejectCallImpl) then) =
      __$$RejectCallImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId, String callId});
}

/// @nodoc
class __$$RejectCallImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$RejectCallImpl>
    implements _$$RejectCallImplCopyWith<$Res> {
  __$$RejectCallImplCopyWithImpl(
      _$RejectCallImpl _value, $Res Function(_$RejectCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? callId = null,
  }) {
    return _then(_$RejectCallImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      callId: null == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RejectCallImpl implements RejectCall {
  const _$RejectCallImpl({required this.roomId, required this.callId});

  @override
  final String roomId;
  @override
  final String callId;

  @override
  String toString() {
    return 'CallEvent.rejectCall(roomId: $roomId, callId: $callId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectCallImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.callId, callId) || other.callId == callId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId, callId);

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RejectCallImplCopyWith<_$RejectCallImpl> get copyWith =>
      __$$RejectCallImplCopyWithImpl<_$RejectCallImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, String receiverId,
            String receiverName, CallType type)
        startCall,
    required TResult Function(CallModel incomingCall) receiveCall,
    required TResult Function(String roomId, CallModel activeCall) acceptCall,
    required TResult Function(String roomId, String callId) rejectCall,
    required TResult Function(String roomId) endCall,
    required TResult Function(CallStatus status) updateCallStatus,
  }) {
    return rejectCall(roomId, callId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, String receiverId, String receiverName,
            CallType type)?
        startCall,
    TResult? Function(CallModel incomingCall)? receiveCall,
    TResult? Function(String roomId, CallModel activeCall)? acceptCall,
    TResult? Function(String roomId, String callId)? rejectCall,
    TResult? Function(String roomId)? endCall,
    TResult? Function(CallStatus status)? updateCallStatus,
  }) {
    return rejectCall?.call(roomId, callId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, String receiverId, String receiverName,
            CallType type)?
        startCall,
    TResult Function(CallModel incomingCall)? receiveCall,
    TResult Function(String roomId, CallModel activeCall)? acceptCall,
    TResult Function(String roomId, String callId)? rejectCall,
    TResult Function(String roomId)? endCall,
    TResult Function(CallStatus status)? updateCallStatus,
    required TResult orElse(),
  }) {
    if (rejectCall != null) {
      return rejectCall(roomId, callId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartCall value) startCall,
    required TResult Function(ReceiveCall value) receiveCall,
    required TResult Function(AcceptCall value) acceptCall,
    required TResult Function(RejectCall value) rejectCall,
    required TResult Function(EndCall value) endCall,
    required TResult Function(UpdateCallStatus value) updateCallStatus,
  }) {
    return rejectCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartCall value)? startCall,
    TResult? Function(ReceiveCall value)? receiveCall,
    TResult? Function(AcceptCall value)? acceptCall,
    TResult? Function(RejectCall value)? rejectCall,
    TResult? Function(EndCall value)? endCall,
    TResult? Function(UpdateCallStatus value)? updateCallStatus,
  }) {
    return rejectCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartCall value)? startCall,
    TResult Function(ReceiveCall value)? receiveCall,
    TResult Function(AcceptCall value)? acceptCall,
    TResult Function(RejectCall value)? rejectCall,
    TResult Function(EndCall value)? endCall,
    TResult Function(UpdateCallStatus value)? updateCallStatus,
    required TResult orElse(),
  }) {
    if (rejectCall != null) {
      return rejectCall(this);
    }
    return orElse();
  }
}

abstract class RejectCall implements CallEvent {
  const factory RejectCall(
      {required final String roomId,
      required final String callId}) = _$RejectCallImpl;

  String get roomId;
  String get callId;

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RejectCallImplCopyWith<_$RejectCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EndCallImplCopyWith<$Res> {
  factory _$$EndCallImplCopyWith(
          _$EndCallImpl value, $Res Function(_$EndCallImpl) then) =
      __$$EndCallImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId});
}

/// @nodoc
class __$$EndCallImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$EndCallImpl>
    implements _$$EndCallImplCopyWith<$Res> {
  __$$EndCallImplCopyWithImpl(
      _$EndCallImpl _value, $Res Function(_$EndCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
  }) {
    return _then(_$EndCallImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EndCallImpl implements EndCall {
  const _$EndCallImpl({required this.roomId});

  @override
  final String roomId;

  @override
  String toString() {
    return 'CallEvent.endCall(roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndCallImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId);

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EndCallImplCopyWith<_$EndCallImpl> get copyWith =>
      __$$EndCallImplCopyWithImpl<_$EndCallImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, String receiverId,
            String receiverName, CallType type)
        startCall,
    required TResult Function(CallModel incomingCall) receiveCall,
    required TResult Function(String roomId, CallModel activeCall) acceptCall,
    required TResult Function(String roomId, String callId) rejectCall,
    required TResult Function(String roomId) endCall,
    required TResult Function(CallStatus status) updateCallStatus,
  }) {
    return endCall(roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, String receiverId, String receiverName,
            CallType type)?
        startCall,
    TResult? Function(CallModel incomingCall)? receiveCall,
    TResult? Function(String roomId, CallModel activeCall)? acceptCall,
    TResult? Function(String roomId, String callId)? rejectCall,
    TResult? Function(String roomId)? endCall,
    TResult? Function(CallStatus status)? updateCallStatus,
  }) {
    return endCall?.call(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, String receiverId, String receiverName,
            CallType type)?
        startCall,
    TResult Function(CallModel incomingCall)? receiveCall,
    TResult Function(String roomId, CallModel activeCall)? acceptCall,
    TResult Function(String roomId, String callId)? rejectCall,
    TResult Function(String roomId)? endCall,
    TResult Function(CallStatus status)? updateCallStatus,
    required TResult orElse(),
  }) {
    if (endCall != null) {
      return endCall(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartCall value) startCall,
    required TResult Function(ReceiveCall value) receiveCall,
    required TResult Function(AcceptCall value) acceptCall,
    required TResult Function(RejectCall value) rejectCall,
    required TResult Function(EndCall value) endCall,
    required TResult Function(UpdateCallStatus value) updateCallStatus,
  }) {
    return endCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartCall value)? startCall,
    TResult? Function(ReceiveCall value)? receiveCall,
    TResult? Function(AcceptCall value)? acceptCall,
    TResult? Function(RejectCall value)? rejectCall,
    TResult? Function(EndCall value)? endCall,
    TResult? Function(UpdateCallStatus value)? updateCallStatus,
  }) {
    return endCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartCall value)? startCall,
    TResult Function(ReceiveCall value)? receiveCall,
    TResult Function(AcceptCall value)? acceptCall,
    TResult Function(RejectCall value)? rejectCall,
    TResult Function(EndCall value)? endCall,
    TResult Function(UpdateCallStatus value)? updateCallStatus,
    required TResult orElse(),
  }) {
    if (endCall != null) {
      return endCall(this);
    }
    return orElse();
  }
}

abstract class EndCall implements CallEvent {
  const factory EndCall({required final String roomId}) = _$EndCallImpl;

  String get roomId;

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EndCallImplCopyWith<_$EndCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCallStatusImplCopyWith<$Res> {
  factory _$$UpdateCallStatusImplCopyWith(_$UpdateCallStatusImpl value,
          $Res Function(_$UpdateCallStatusImpl) then) =
      __$$UpdateCallStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CallStatus status});
}

/// @nodoc
class __$$UpdateCallStatusImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$UpdateCallStatusImpl>
    implements _$$UpdateCallStatusImplCopyWith<$Res> {
  __$$UpdateCallStatusImplCopyWithImpl(_$UpdateCallStatusImpl _value,
      $Res Function(_$UpdateCallStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$UpdateCallStatusImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CallStatus,
    ));
  }
}

/// @nodoc

class _$UpdateCallStatusImpl implements UpdateCallStatus {
  const _$UpdateCallStatusImpl({required this.status});

  @override
  final CallStatus status;

  @override
  String toString() {
    return 'CallEvent.updateCallStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCallStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCallStatusImplCopyWith<_$UpdateCallStatusImpl> get copyWith =>
      __$$UpdateCallStatusImplCopyWithImpl<_$UpdateCallStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, String receiverId,
            String receiverName, CallType type)
        startCall,
    required TResult Function(CallModel incomingCall) receiveCall,
    required TResult Function(String roomId, CallModel activeCall) acceptCall,
    required TResult Function(String roomId, String callId) rejectCall,
    required TResult Function(String roomId) endCall,
    required TResult Function(CallStatus status) updateCallStatus,
  }) {
    return updateCallStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, String receiverId, String receiverName,
            CallType type)?
        startCall,
    TResult? Function(CallModel incomingCall)? receiveCall,
    TResult? Function(String roomId, CallModel activeCall)? acceptCall,
    TResult? Function(String roomId, String callId)? rejectCall,
    TResult? Function(String roomId)? endCall,
    TResult? Function(CallStatus status)? updateCallStatus,
  }) {
    return updateCallStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, String receiverId, String receiverName,
            CallType type)?
        startCall,
    TResult Function(CallModel incomingCall)? receiveCall,
    TResult Function(String roomId, CallModel activeCall)? acceptCall,
    TResult Function(String roomId, String callId)? rejectCall,
    TResult Function(String roomId)? endCall,
    TResult Function(CallStatus status)? updateCallStatus,
    required TResult orElse(),
  }) {
    if (updateCallStatus != null) {
      return updateCallStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartCall value) startCall,
    required TResult Function(ReceiveCall value) receiveCall,
    required TResult Function(AcceptCall value) acceptCall,
    required TResult Function(RejectCall value) rejectCall,
    required TResult Function(EndCall value) endCall,
    required TResult Function(UpdateCallStatus value) updateCallStatus,
  }) {
    return updateCallStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartCall value)? startCall,
    TResult? Function(ReceiveCall value)? receiveCall,
    TResult? Function(AcceptCall value)? acceptCall,
    TResult? Function(RejectCall value)? rejectCall,
    TResult? Function(EndCall value)? endCall,
    TResult? Function(UpdateCallStatus value)? updateCallStatus,
  }) {
    return updateCallStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartCall value)? startCall,
    TResult Function(ReceiveCall value)? receiveCall,
    TResult Function(AcceptCall value)? acceptCall,
    TResult Function(RejectCall value)? rejectCall,
    TResult Function(EndCall value)? endCall,
    TResult Function(UpdateCallStatus value)? updateCallStatus,
    required TResult orElse(),
  }) {
    if (updateCallStatus != null) {
      return updateCallStatus(this);
    }
    return orElse();
  }
}

abstract class UpdateCallStatus implements CallEvent {
  const factory UpdateCallStatus({required final CallStatus status}) =
      _$UpdateCallStatusImpl;

  CallStatus get status;

  /// Create a copy of CallEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCallStatusImplCopyWith<_$UpdateCallStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CallState {
  CallModel? get currentCall => throw _privateConstructorUsedError;
  MediaStream? get localStream => throw _privateConstructorUsedError;
  MediaStream? get remoteStream => throw _privateConstructorUsedError;
  RTCPeerConnection? get peerConnection => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of CallState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CallStateCopyWith<CallState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallStateCopyWith<$Res> {
  factory $CallStateCopyWith(CallState value, $Res Function(CallState) then) =
      _$CallStateCopyWithImpl<$Res, CallState>;
  @useResult
  $Res call(
      {CallModel? currentCall,
      MediaStream? localStream,
      MediaStream? remoteStream,
      RTCPeerConnection? peerConnection,
      String? errorMessage});

  $CallModelCopyWith<$Res>? get currentCall;
}

/// @nodoc
class _$CallStateCopyWithImpl<$Res, $Val extends CallState>
    implements $CallStateCopyWith<$Res> {
  _$CallStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CallState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentCall = freezed,
    Object? localStream = freezed,
    Object? remoteStream = freezed,
    Object? peerConnection = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      currentCall: freezed == currentCall
          ? _value.currentCall
          : currentCall // ignore: cast_nullable_to_non_nullable
              as CallModel?,
      localStream: freezed == localStream
          ? _value.localStream
          : localStream // ignore: cast_nullable_to_non_nullable
              as MediaStream?,
      remoteStream: freezed == remoteStream
          ? _value.remoteStream
          : remoteStream // ignore: cast_nullable_to_non_nullable
              as MediaStream?,
      peerConnection: freezed == peerConnection
          ? _value.peerConnection
          : peerConnection // ignore: cast_nullable_to_non_nullable
              as RTCPeerConnection?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of CallState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CallModelCopyWith<$Res>? get currentCall {
    if (_value.currentCall == null) {
      return null;
    }

    return $CallModelCopyWith<$Res>(_value.currentCall!, (value) {
      return _then(_value.copyWith(currentCall: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CallStateImplCopyWith<$Res>
    implements $CallStateCopyWith<$Res> {
  factory _$$CallStateImplCopyWith(
          _$CallStateImpl value, $Res Function(_$CallStateImpl) then) =
      __$$CallStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CallModel? currentCall,
      MediaStream? localStream,
      MediaStream? remoteStream,
      RTCPeerConnection? peerConnection,
      String? errorMessage});

  @override
  $CallModelCopyWith<$Res>? get currentCall;
}

/// @nodoc
class __$$CallStateImplCopyWithImpl<$Res>
    extends _$CallStateCopyWithImpl<$Res, _$CallStateImpl>
    implements _$$CallStateImplCopyWith<$Res> {
  __$$CallStateImplCopyWithImpl(
      _$CallStateImpl _value, $Res Function(_$CallStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentCall = freezed,
    Object? localStream = freezed,
    Object? remoteStream = freezed,
    Object? peerConnection = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$CallStateImpl(
      currentCall: freezed == currentCall
          ? _value.currentCall
          : currentCall // ignore: cast_nullable_to_non_nullable
              as CallModel?,
      localStream: freezed == localStream
          ? _value.localStream
          : localStream // ignore: cast_nullable_to_non_nullable
              as MediaStream?,
      remoteStream: freezed == remoteStream
          ? _value.remoteStream
          : remoteStream // ignore: cast_nullable_to_non_nullable
              as MediaStream?,
      peerConnection: freezed == peerConnection
          ? _value.peerConnection
          : peerConnection // ignore: cast_nullable_to_non_nullable
              as RTCPeerConnection?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CallStateImpl implements _CallState {
  const _$CallStateImpl(
      {this.currentCall,
      this.localStream,
      this.remoteStream,
      this.peerConnection,
      this.errorMessage});

  @override
  final CallModel? currentCall;
  @override
  final MediaStream? localStream;
  @override
  final MediaStream? remoteStream;
  @override
  final RTCPeerConnection? peerConnection;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CallState(currentCall: $currentCall, localStream: $localStream, remoteStream: $remoteStream, peerConnection: $peerConnection, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallStateImpl &&
            (identical(other.currentCall, currentCall) ||
                other.currentCall == currentCall) &&
            (identical(other.localStream, localStream) ||
                other.localStream == localStream) &&
            (identical(other.remoteStream, remoteStream) ||
                other.remoteStream == remoteStream) &&
            (identical(other.peerConnection, peerConnection) ||
                other.peerConnection == peerConnection) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentCall, localStream,
      remoteStream, peerConnection, errorMessage);

  /// Create a copy of CallState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CallStateImplCopyWith<_$CallStateImpl> get copyWith =>
      __$$CallStateImplCopyWithImpl<_$CallStateImpl>(this, _$identity);
}

abstract class _CallState implements CallState {
  const factory _CallState(
      {final CallModel? currentCall,
      final MediaStream? localStream,
      final MediaStream? remoteStream,
      final RTCPeerConnection? peerConnection,
      final String? errorMessage}) = _$CallStateImpl;

  @override
  CallModel? get currentCall;
  @override
  MediaStream? get localStream;
  @override
  MediaStream? get remoteStream;
  @override
  RTCPeerConnection? get peerConnection;
  @override
  String? get errorMessage;

  /// Create a copy of CallState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CallStateImplCopyWith<_$CallStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
