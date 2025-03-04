// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String name) create,
    required TResult Function(String roomId) joinRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String name)? create,
    TResult? Function(String roomId)? joinRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String name)? create,
    TResult Function(String roomId)? joinRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRoomsEvent value) load,
    required TResult Function(CreateRoomEvent value) create,
    required TResult Function(JoinRoomEvent value) joinRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRoomsEvent value)? load,
    TResult? Function(CreateRoomEvent value)? create,
    TResult? Function(JoinRoomEvent value)? joinRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRoomsEvent value)? load,
    TResult Function(CreateRoomEvent value)? create,
    TResult Function(JoinRoomEvent value)? joinRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomEventCopyWith<$Res> {
  factory $RoomEventCopyWith(RoomEvent value, $Res Function(RoomEvent) then) =
      _$RoomEventCopyWithImpl<$Res, RoomEvent>;
}

/// @nodoc
class _$RoomEventCopyWithImpl<$Res, $Val extends RoomEvent>
    implements $RoomEventCopyWith<$Res> {
  _$RoomEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadRoomsEventImplCopyWith<$Res> {
  factory _$$LoadRoomsEventImplCopyWith(_$LoadRoomsEventImpl value,
          $Res Function(_$LoadRoomsEventImpl) then) =
      __$$LoadRoomsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadRoomsEventImplCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$LoadRoomsEventImpl>
    implements _$$LoadRoomsEventImplCopyWith<$Res> {
  __$$LoadRoomsEventImplCopyWithImpl(
      _$LoadRoomsEventImpl _value, $Res Function(_$LoadRoomsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadRoomsEventImpl implements LoadRoomsEvent {
  const _$LoadRoomsEventImpl();

  @override
  String toString() {
    return 'RoomEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadRoomsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String name) create,
    required TResult Function(String roomId) joinRoom,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String name)? create,
    TResult? Function(String roomId)? joinRoom,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String name)? create,
    TResult Function(String roomId)? joinRoom,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRoomsEvent value) load,
    required TResult Function(CreateRoomEvent value) create,
    required TResult Function(JoinRoomEvent value) joinRoom,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRoomsEvent value)? load,
    TResult? Function(CreateRoomEvent value)? create,
    TResult? Function(JoinRoomEvent value)? joinRoom,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRoomsEvent value)? load,
    TResult Function(CreateRoomEvent value)? create,
    TResult Function(JoinRoomEvent value)? joinRoom,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadRoomsEvent implements RoomEvent {
  const factory LoadRoomsEvent() = _$LoadRoomsEventImpl;
}

/// @nodoc
abstract class _$$CreateRoomEventImplCopyWith<$Res> {
  factory _$$CreateRoomEventImplCopyWith(_$CreateRoomEventImpl value,
          $Res Function(_$CreateRoomEventImpl) then) =
      __$$CreateRoomEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CreateRoomEventImplCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$CreateRoomEventImpl>
    implements _$$CreateRoomEventImplCopyWith<$Res> {
  __$$CreateRoomEventImplCopyWithImpl(
      _$CreateRoomEventImpl _value, $Res Function(_$CreateRoomEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$CreateRoomEventImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateRoomEventImpl implements CreateRoomEvent {
  const _$CreateRoomEventImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'RoomEvent.create(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRoomEventImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRoomEventImplCopyWith<_$CreateRoomEventImpl> get copyWith =>
      __$$CreateRoomEventImplCopyWithImpl<_$CreateRoomEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String name) create,
    required TResult Function(String roomId) joinRoom,
  }) {
    return create(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String name)? create,
    TResult? Function(String roomId)? joinRoom,
  }) {
    return create?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String name)? create,
    TResult Function(String roomId)? joinRoom,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRoomsEvent value) load,
    required TResult Function(CreateRoomEvent value) create,
    required TResult Function(JoinRoomEvent value) joinRoom,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRoomsEvent value)? load,
    TResult? Function(CreateRoomEvent value)? create,
    TResult? Function(JoinRoomEvent value)? joinRoom,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRoomsEvent value)? load,
    TResult Function(CreateRoomEvent value)? create,
    TResult Function(JoinRoomEvent value)? joinRoom,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CreateRoomEvent implements RoomEvent {
  const factory CreateRoomEvent({required final String name}) =
      _$CreateRoomEventImpl;

  String get name;

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateRoomEventImplCopyWith<_$CreateRoomEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JoinRoomEventImplCopyWith<$Res> {
  factory _$$JoinRoomEventImplCopyWith(
          _$JoinRoomEventImpl value, $Res Function(_$JoinRoomEventImpl) then) =
      __$$JoinRoomEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId});
}

/// @nodoc
class __$$JoinRoomEventImplCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$JoinRoomEventImpl>
    implements _$$JoinRoomEventImplCopyWith<$Res> {
  __$$JoinRoomEventImplCopyWithImpl(
      _$JoinRoomEventImpl _value, $Res Function(_$JoinRoomEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
  }) {
    return _then(_$JoinRoomEventImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$JoinRoomEventImpl implements JoinRoomEvent {
  const _$JoinRoomEventImpl({required this.roomId});

  @override
  final String roomId;

  @override
  String toString() {
    return 'RoomEvent.joinRoom(roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinRoomEventImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId);

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinRoomEventImplCopyWith<_$JoinRoomEventImpl> get copyWith =>
      __$$JoinRoomEventImplCopyWithImpl<_$JoinRoomEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String name) create,
    required TResult Function(String roomId) joinRoom,
  }) {
    return joinRoom(roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String name)? create,
    TResult? Function(String roomId)? joinRoom,
  }) {
    return joinRoom?.call(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String name)? create,
    TResult Function(String roomId)? joinRoom,
    required TResult orElse(),
  }) {
    if (joinRoom != null) {
      return joinRoom(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRoomsEvent value) load,
    required TResult Function(CreateRoomEvent value) create,
    required TResult Function(JoinRoomEvent value) joinRoom,
  }) {
    return joinRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRoomsEvent value)? load,
    TResult? Function(CreateRoomEvent value)? create,
    TResult? Function(JoinRoomEvent value)? joinRoom,
  }) {
    return joinRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRoomsEvent value)? load,
    TResult Function(CreateRoomEvent value)? create,
    TResult Function(JoinRoomEvent value)? joinRoom,
    required TResult orElse(),
  }) {
    if (joinRoom != null) {
      return joinRoom(this);
    }
    return orElse();
  }
}

abstract class JoinRoomEvent implements RoomEvent {
  const factory JoinRoomEvent({required final String roomId}) =
      _$JoinRoomEventImpl;

  String get roomId;

  /// Create a copy of RoomEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinRoomEventImplCopyWith<_$JoinRoomEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomModel> rooms) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomModel> rooms)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomModel> rooms)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomInitial value) initial,
    required TResult Function(RoomLoading value) loading,
    required TResult Function(RoomLoaded value) loaded,
    required TResult Function(RoomError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomInitial value)? initial,
    TResult? Function(RoomLoading value)? loading,
    TResult? Function(RoomLoaded value)? loaded,
    TResult? Function(RoomError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomInitial value)? initial,
    TResult Function(RoomLoading value)? loading,
    TResult Function(RoomLoaded value)? loaded,
    TResult Function(RoomError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomStateCopyWith<$Res> {
  factory $RoomStateCopyWith(RoomState value, $Res Function(RoomState) then) =
      _$RoomStateCopyWithImpl<$Res, RoomState>;
}

/// @nodoc
class _$RoomStateCopyWithImpl<$Res, $Val extends RoomState>
    implements $RoomStateCopyWith<$Res> {
  _$RoomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RoomInitialImplCopyWith<$Res> {
  factory _$$RoomInitialImplCopyWith(
          _$RoomInitialImpl value, $Res Function(_$RoomInitialImpl) then) =
      __$$RoomInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomInitialImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomInitialImpl>
    implements _$$RoomInitialImplCopyWith<$Res> {
  __$$RoomInitialImplCopyWithImpl(
      _$RoomInitialImpl _value, $Res Function(_$RoomInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RoomInitialImpl implements RoomInitial {
  const _$RoomInitialImpl();

  @override
  String toString() {
    return 'RoomState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomModel> rooms) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomModel> rooms)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomModel> rooms)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomInitial value) initial,
    required TResult Function(RoomLoading value) loading,
    required TResult Function(RoomLoaded value) loaded,
    required TResult Function(RoomError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomInitial value)? initial,
    TResult? Function(RoomLoading value)? loading,
    TResult? Function(RoomLoaded value)? loaded,
    TResult? Function(RoomError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomInitial value)? initial,
    TResult Function(RoomLoading value)? loading,
    TResult Function(RoomLoaded value)? loaded,
    TResult Function(RoomError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RoomInitial implements RoomState {
  const factory RoomInitial() = _$RoomInitialImpl;
}

/// @nodoc
abstract class _$$RoomLoadingImplCopyWith<$Res> {
  factory _$$RoomLoadingImplCopyWith(
          _$RoomLoadingImpl value, $Res Function(_$RoomLoadingImpl) then) =
      __$$RoomLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomLoadingImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomLoadingImpl>
    implements _$$RoomLoadingImplCopyWith<$Res> {
  __$$RoomLoadingImplCopyWithImpl(
      _$RoomLoadingImpl _value, $Res Function(_$RoomLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RoomLoadingImpl implements RoomLoading {
  const _$RoomLoadingImpl();

  @override
  String toString() {
    return 'RoomState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomModel> rooms) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomModel> rooms)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomModel> rooms)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomInitial value) initial,
    required TResult Function(RoomLoading value) loading,
    required TResult Function(RoomLoaded value) loaded,
    required TResult Function(RoomError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomInitial value)? initial,
    TResult? Function(RoomLoading value)? loading,
    TResult? Function(RoomLoaded value)? loaded,
    TResult? Function(RoomError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomInitial value)? initial,
    TResult Function(RoomLoading value)? loading,
    TResult Function(RoomLoaded value)? loaded,
    TResult Function(RoomError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RoomLoading implements RoomState {
  const factory RoomLoading() = _$RoomLoadingImpl;
}

/// @nodoc
abstract class _$$RoomLoadedImplCopyWith<$Res> {
  factory _$$RoomLoadedImplCopyWith(
          _$RoomLoadedImpl value, $Res Function(_$RoomLoadedImpl) then) =
      __$$RoomLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RoomModel> rooms});
}

/// @nodoc
class __$$RoomLoadedImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomLoadedImpl>
    implements _$$RoomLoadedImplCopyWith<$Res> {
  __$$RoomLoadedImplCopyWithImpl(
      _$RoomLoadedImpl _value, $Res Function(_$RoomLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$RoomLoadedImpl(
      null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
    ));
  }
}

/// @nodoc

class _$RoomLoadedImpl implements RoomLoaded {
  const _$RoomLoadedImpl(final List<RoomModel> rooms) : _rooms = rooms;

  final List<RoomModel> _rooms;
  @override
  List<RoomModel> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'RoomState.loaded(rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomLoadedImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomLoadedImplCopyWith<_$RoomLoadedImpl> get copyWith =>
      __$$RoomLoadedImplCopyWithImpl<_$RoomLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomModel> rooms) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(rooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomModel> rooms)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomModel> rooms)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomInitial value) initial,
    required TResult Function(RoomLoading value) loading,
    required TResult Function(RoomLoaded value) loaded,
    required TResult Function(RoomError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomInitial value)? initial,
    TResult? Function(RoomLoading value)? loading,
    TResult? Function(RoomLoaded value)? loaded,
    TResult? Function(RoomError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomInitial value)? initial,
    TResult Function(RoomLoading value)? loading,
    TResult Function(RoomLoaded value)? loaded,
    TResult Function(RoomError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RoomLoaded implements RoomState {
  const factory RoomLoaded(final List<RoomModel> rooms) = _$RoomLoadedImpl;

  List<RoomModel> get rooms;

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomLoadedImplCopyWith<_$RoomLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomErrorImplCopyWith<$Res> {
  factory _$$RoomErrorImplCopyWith(
          _$RoomErrorImpl value, $Res Function(_$RoomErrorImpl) then) =
      __$$RoomErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RoomErrorImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomErrorImpl>
    implements _$$RoomErrorImplCopyWith<$Res> {
  __$$RoomErrorImplCopyWithImpl(
      _$RoomErrorImpl _value, $Res Function(_$RoomErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RoomErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RoomErrorImpl implements RoomError {
  const _$RoomErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RoomState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomErrorImplCopyWith<_$RoomErrorImpl> get copyWith =>
      __$$RoomErrorImplCopyWithImpl<_$RoomErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RoomModel> rooms) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RoomModel> rooms)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RoomModel> rooms)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomInitial value) initial,
    required TResult Function(RoomLoading value) loading,
    required TResult Function(RoomLoaded value) loaded,
    required TResult Function(RoomError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomInitial value)? initial,
    TResult? Function(RoomLoading value)? loading,
    TResult? Function(RoomLoaded value)? loaded,
    TResult? Function(RoomError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomInitial value)? initial,
    TResult Function(RoomLoading value)? loading,
    TResult Function(RoomLoaded value)? loaded,
    TResult Function(RoomError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RoomError implements RoomState {
  const factory RoomError(final String message) = _$RoomErrorImpl;

  String get message;

  /// Create a copy of RoomState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomErrorImplCopyWith<_$RoomErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
