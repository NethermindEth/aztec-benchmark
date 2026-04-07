use aztec::macros::aztec;

/// Minimal no-op contract shipped with aztec-benchmark.
/// Deploy it as a trace delimiter — its circuit name ("Noop:noop") serves as the
/// `endMatch` boundary when defining trace regions via `getRegions()`.
///
/// Example region config:
///   { name: 'my-contract', startMatch: 'MyContract:', endMatch: 'Noop:' }
#[aztec]
pub contract Noop {
    use aztec::macros::functions::external;

    #[external("private")]
    fn noop() {}

    #[external("public")]
    fn noop_pub() {}
}
