// Copyright (c) 2011, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// WARNING: Do not edit - generated code.

class _IDBDatabaseWrappingImplementation extends DOMWrapperBase implements IDBDatabase {
  _IDBDatabaseWrappingImplementation() : super() {}

  static create__IDBDatabaseWrappingImplementation() native {
    return new _IDBDatabaseWrappingImplementation();
  }

  String get name() { return _get_name(this); }
  static String _get_name(var _this) native;

  EventListener get onabort() { return _get_onabort(this); }
  static EventListener _get_onabort(var _this) native;

  void set onabort(EventListener value) { _set_onabort(this, value); }
  static void _set_onabort(var _this, EventListener value) native;

  EventListener get onerror() { return _get_onerror(this); }
  static EventListener _get_onerror(var _this) native;

  void set onerror(EventListener value) { _set_onerror(this, value); }
  static void _set_onerror(var _this, EventListener value) native;

  EventListener get onversionchange() { return _get_onversionchange(this); }
  static EventListener _get_onversionchange(var _this) native;

  void set onversionchange(EventListener value) { _set_onversionchange(this, value); }
  static void _set_onversionchange(var _this, EventListener value) native;

  String get version() { return _get_version(this); }
  static String _get_version(var _this) native;

  void addEventListener(String type, EventListener listener, [bool useCapture = null]) {
    if (useCapture === null) {
      _addEventListener(this, type, listener);
      return;
    } else {
      _addEventListener_2(this, type, listener, useCapture);
      return;
    }
  }
  static void _addEventListener(receiver, type, listener) native;
  static void _addEventListener_2(receiver, type, listener, useCapture) native;

  void close() {
    _close(this);
    return;
  }
  static void _close(receiver) native;

  IDBObjectStore createObjectStore(String name) {
    return _createObjectStore(this, name);
  }
  static IDBObjectStore _createObjectStore(receiver, name) native;

  void deleteObjectStore(String name) {
    _deleteObjectStore(this, name);
    return;
  }
  static void _deleteObjectStore(receiver, name) native;

  bool dispatchEvent(Event evt) {
    return _dispatchEvent(this, evt);
  }
  static bool _dispatchEvent(receiver, evt) native;

  void removeEventListener(String type, EventListener listener, [bool useCapture = null]) {
    if (useCapture === null) {
      _removeEventListener(this, type, listener);
      return;
    } else {
      _removeEventListener_2(this, type, listener, useCapture);
      return;
    }
  }
  static void _removeEventListener(receiver, type, listener) native;
  static void _removeEventListener_2(receiver, type, listener, useCapture) native;

  IDBVersionChangeRequest setVersion(String version) {
    return _setVersion(this, version);
  }
  static IDBVersionChangeRequest _setVersion(receiver, version) native;

  IDBTransaction transaction(String storeName, [int mode = null]) {
    if (mode === null) {
      return _transaction(this, storeName);
    } else {
      return _transaction_2(this, storeName, mode);
    }
  }
  static IDBTransaction _transaction(receiver, storeName) native;
  static IDBTransaction _transaction_2(receiver, storeName, mode) native;

  String get typeName() { return "IDBDatabase"; }
}
