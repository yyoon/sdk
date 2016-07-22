// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#ifndef VM_ATOMIC_ANDROID_H_
#define VM_ATOMIC_ANDROID_H_

#if !defined VM_ATOMIC_H_
#error Do not include atomic_android.h directly. Use atomic.h instead.
#endif

#if !defined(TARGET_OS_ANDROID)
#error This file should only be included on Android builds.
#endif

namespace dart {

template<typename T> T AtomicOperations::LoadAcquire(T* ptr) {
  return __atomic_load_n(ptr, __ATOMIC_ACQUIRE);
}


template<typename T> void AtomicOperations::StoreRelease(T* ptr, T val) {
  __atomic_store_n(ptr, val, __ATOMIC_RELEASE);
}


inline uintptr_t AtomicOperations::FetchAndIncrement(uintptr_t* p) {
  return __sync_fetch_and_add(p, 1);
}


inline void AtomicOperations::IncrementBy(intptr_t* p, intptr_t value) {
  __sync_fetch_and_add(p, value);
}


inline void AtomicOperations::IncrementInt64By(int64_t* p, int64_t value) {
  __sync_fetch_and_add(p, value);
}


inline uintptr_t AtomicOperations::FetchAndDecrement(uintptr_t* p) {
  return __sync_fetch_and_sub(p, 1);
}


inline void AtomicOperations::DecrementBy(intptr_t* p, intptr_t value) {
  __sync_fetch_and_sub(p, value);
}


#if !defined(USING_SIMULATOR_ATOMICS)
inline uword AtomicOperations::CompareAndSwapWord(uword* ptr,
                                                  uword old_value,
                                                  uword new_value) {
  return __sync_val_compare_and_swap(ptr, old_value, new_value);
}


inline uint32_t AtomicOperations::CompareAndSwapUint32(uint32_t* ptr,
                                                       uint32_t old_value,
                                                       uint32_t new_value) {
  return __sync_val_compare_and_swap(ptr, old_value, new_value);
}
#endif  // !defined(USING_SIMULATOR_ATOMICS)

}  // namespace dart

#endif  // VM_ATOMIC_ANDROID_H_
