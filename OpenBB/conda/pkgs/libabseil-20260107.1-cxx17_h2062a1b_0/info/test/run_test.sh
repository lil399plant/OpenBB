

set -ex



test -f $PREFIX/lib/libabsl_decode_rust_punycode${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_decode_rust_punycode.a
pkg-config --print-errors --exact-version "20260107" absl_decode_rust_punycode
test -f $PREFIX/lib/libabsl_demangle_rust${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_demangle_rust.a
pkg-config --print-errors --exact-version "20260107" absl_demangle_rust
test -f $PREFIX/lib/libabsl_flags_commandlineflag${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_flags_commandlineflag.a
pkg-config --print-errors --exact-version "20260107" absl_flags_commandlineflag
test -f $PREFIX/lib/libabsl_flags_config${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_flags_config.a
pkg-config --print-errors --exact-version "20260107" absl_flags_config
test -f $PREFIX/lib/libabsl_flags_marshalling${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_flags_marshalling.a
pkg-config --print-errors --exact-version "20260107" absl_flags_marshalling
test -f $PREFIX/lib/libabsl_flags_parse${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_flags_parse.a
pkg-config --print-errors --exact-version "20260107" absl_flags_parse
test -f $PREFIX/lib/libabsl_flags_private_handle_accessor${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_flags_private_handle_accessor.a
pkg-config --print-errors --exact-version "20260107" absl_flags_private_handle_accessor
test -f $PREFIX/lib/libabsl_flags_program_name${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_flags_program_name.a
pkg-config --print-errors --exact-version "20260107" absl_flags_program_name
test -f $PREFIX/lib/libabsl_flags_reflection${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_flags_reflection.a
pkg-config --print-errors --exact-version "20260107" absl_flags_reflection
test -f $PREFIX/lib/libabsl_flags_usage${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_flags_usage.a
pkg-config --print-errors --exact-version "20260107" absl_flags_usage
test -f $PREFIX/lib/libabsl_hashtable_profiler${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_hashtable_profiler.a
pkg-config --print-errors --exact-version "20260107" absl_hashtable_profiler
test -f $PREFIX/lib/libabsl_log_flags${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_log_flags.a
pkg-config --print-errors --exact-version "20260107" absl_log_flags
test -f $PREFIX/lib/libabsl_poison${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_poison.a
pkg-config --print-errors --exact-version "20260107" absl_poison
test -f $PREFIX/lib/libabsl_profile_builder${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_profile_builder.a
pkg-config --print-errors --exact-version "20260107" absl_profile_builder
test -f $PREFIX/lib/libabsl_base${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_base.a
pkg-config --print-errors --exact-version "20260107" absl_base
test -f $PREFIX/lib/libabsl_civil_time${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_civil_time.a
pkg-config --print-errors --exact-version "20260107" absl_civil_time
test -f $PREFIX/lib/libabsl_crc_cord_state${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_crc_cord_state.a
pkg-config --print-errors --exact-version "20260107" absl_crc_cord_state
test -f $PREFIX/lib/libabsl_crc_cpu_detect${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_crc_cpu_detect.a
pkg-config --print-errors --exact-version "20260107" absl_crc_cpu_detect
test -f $PREFIX/lib/libabsl_crc32c${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_crc32c.a
pkg-config --print-errors --exact-version "20260107" absl_crc32c
test -f $PREFIX/lib/libabsl_cord${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_cord.a
pkg-config --print-errors --exact-version "20260107" absl_cord
test -f $PREFIX/lib/libabsl_cordz_functions${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_cordz_functions.a
pkg-config --print-errors --exact-version "20260107" absl_cordz_functions
test -f $PREFIX/lib/libabsl_cordz_handle${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_cordz_handle.a
pkg-config --print-errors --exact-version "20260107" absl_cordz_handle
test -f $PREFIX/lib/libabsl_cordz_info${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_cordz_info.a
pkg-config --print-errors --exact-version "20260107" absl_cordz_info
test -f $PREFIX/lib/libabsl_cordz_sample_token${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_cordz_sample_token.a
pkg-config --print-errors --exact-version "20260107" absl_cordz_sample_token
test -f $PREFIX/lib/libabsl_die_if_null${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_die_if_null.a
pkg-config --print-errors --exact-version "20260107" absl_die_if_null
test -f $PREFIX/lib/libabsl_examine_stack${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_examine_stack.a
pkg-config --print-errors --exact-version "20260107" absl_examine_stack
test -f $PREFIX/lib/libabsl_exponential_biased${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_exponential_biased.a
pkg-config --print-errors --exact-version "20260107" absl_exponential_biased
test -f $PREFIX/lib/libabsl_failure_signal_handler${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_failure_signal_handler.a
pkg-config --print-errors --exact-version "20260107" absl_failure_signal_handler
test -f $PREFIX/lib/libabsl_hash${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_hash.a
pkg-config --print-errors --exact-version "20260107" absl_hash
test -f $PREFIX/lib/libabsl_hashtablez_sampler${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_hashtablez_sampler.a
pkg-config --print-errors --exact-version "20260107" absl_hashtablez_sampler
test -f $PREFIX/lib/libabsl_int128${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_int128.a
pkg-config --print-errors --exact-version "20260107" absl_int128
test -f $PREFIX/lib/libabsl_log_severity${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_log_severity.a
pkg-config --print-errors --exact-version "20260107" absl_log_severity
test -f $PREFIX/lib/libabsl_periodic_sampler${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_periodic_sampler.a
pkg-config --print-errors --exact-version "20260107" absl_periodic_sampler
test -f $PREFIX/lib/libabsl_random_distributions${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_random_distributions.a
pkg-config --print-errors --exact-version "20260107" absl_random_distributions
test -f $PREFIX/lib/libabsl_random_seed_gen_exception${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_random_seed_gen_exception.a
pkg-config --print-errors --exact-version "20260107" absl_random_seed_gen_exception
test -f $PREFIX/lib/libabsl_random_seed_sequences${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_random_seed_sequences.a
pkg-config --print-errors --exact-version "20260107" absl_random_seed_sequences
test -f $PREFIX/lib/libabsl_raw_hash_set${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_raw_hash_set.a
pkg-config --print-errors --exact-version "20260107" absl_raw_hash_set
test -f $PREFIX/lib/libabsl_scoped_set_env${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_scoped_set_env.a
pkg-config --print-errors --exact-version "20260107" absl_scoped_set_env
test -f $PREFIX/lib/libabsl_spinlock_wait${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_spinlock_wait.a
pkg-config --print-errors --exact-version "20260107" absl_spinlock_wait
test -f $PREFIX/lib/libabsl_stacktrace${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_stacktrace.a
pkg-config --print-errors --exact-version "20260107" absl_stacktrace
test -f $PREFIX/lib/libabsl_status${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_status.a
pkg-config --print-errors --exact-version "20260107" absl_status
test -f $PREFIX/lib/libabsl_statusor${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_statusor.a
pkg-config --print-errors --exact-version "20260107" absl_statusor
test -f $PREFIX/lib/libabsl_strerror${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_strerror.a
pkg-config --print-errors --exact-version "20260107" absl_strerror
test -f $PREFIX/lib/libabsl_strings${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_strings.a
pkg-config --print-errors --exact-version "20260107" absl_strings
test -f $PREFIX/lib/libabsl_symbolize${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_symbolize.a
pkg-config --print-errors --exact-version "20260107" absl_symbolize
test -f $PREFIX/lib/libabsl_synchronization${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_synchronization.a
pkg-config --print-errors --exact-version "20260107" absl_synchronization
test -f $PREFIX/lib/libabsl_throw_delegate${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_throw_delegate.a
pkg-config --print-errors --exact-version "20260107" absl_throw_delegate
test -f $PREFIX/lib/libabsl_time${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_time.a
pkg-config --print-errors --exact-version "20260107" absl_time
test -f $PREFIX/lib/libabsl_time_zone${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_time_zone.a
pkg-config --print-errors --exact-version "20260107" absl_time_zone
test ! -f $PREFIX/lib/libabsl_scoped_mock_log${SHLIB_EXT}
test ! -f $PREFIX/lib/libabsl_scoped_mock_log.a
cd cmake_test
export CMAKE_ARGS="$CMAKE_ARGS -GNinja -DCMAKE_BUILD_TYPE=Release"
cmake $CMAKE_ARGS  -DCMAKE_CXX_STANDARD=17 .
cmake --build .
./flags_example
grep -q SHELL $PREFIX/lib/pkgconfig/absl_random_internal_randen_hwaes.pc && exit 1 || exit 0
exit 0
