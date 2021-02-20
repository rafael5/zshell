

----------------------------------------------------------------------------------------
YDB DOCKER WITH CURRENT RUSTUP INSTALLED

https://www.rust-lang.org/tools/install

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


docker-desktop# which cargo
/root/.cargo/bin/cargo

docker-desktop# cargo --version
cargo 1.49.0 (d00d64df9 2020-12-05)

Installing /root/.cargo/bin/lsd
Installed package `lsd v0.19.0` (executable `lsd`)

SUCCESS!





----------------------------------------------------------------------------------------
CURRENT YDB DOCKER WITH SYSTEM-INSTALLED RUST

root@docker-desktop:/data# cargo --version
cargo 1.42.1

root@docker-desktop:/data# which cargo
/usr/bin/cargo

root@docker-desktop:/data# cargo install lsd

   Compiling lsd v0.19.0
   Compiling serde_yaml v0.8.15
error[E0658]: use of unstable library feature 'matches_macro'
  --> /root/.cargo/registry/src/github.com-1ecc6299db9ec823/lsd-0.19.0/src/color.rs:55:9
   |
55 |         matches!(self, Elem::Dir { uid: true } | Elem::File { uid: true, .. })
   |         ^^^^^^^
   |
   = note: for more information, see https://github.com/rust-lang/rust/issues/65721

error[E0658]: use of unstable library feature 'matches_macro'
  --> /root/.cargo/registry/src/github.com-1ecc6299db9ec823/lsd-0.19.0/src/display.rs:70:17
   |
70 |             && (matches!(meta.file_type, FileType::Directory{..})
   |                 ^^^^^^^
   |
   = note: for more information, see https://github.com/rust-lang/rust/issues/65721

error[E0658]: use of unstable library feature 'matches_macro'
  --> /root/.cargo/registry/src/github.com-1ecc6299db9ec823/lsd-0.19.0/src/display.rs:71:21
   |
71 |                 || (matches!(meta.file_type, FileType::SymLink { is_dir: true })
   |                     ^^^^^^^
   |
   = note: for more information, see https://github.com/rust-lang/rust/issues/65721

error[E0658]: use of unstable library feature 'matches_macro'
   --> /root/.cargo/registry/src/github.com-1ecc6299db9ec823/lsd-0.19.0/src/display.rs:229:17
    |
229 |                 matches!(x.file_type, FileType::Directory { .. })
    |                 ^^^^^^^
    |
    = note: for more information, see https://github.com/rust-lang/rust/issues/65721

error[E0658]: use of unstable library feature 'matches_macro'
   --> /root/.cargo/registry/src/github.com-1ecc6299db9ec823/lsd-0.19.0/src/display.rs:230:25
    |
230 |                     || (matches!(x.file_type, FileType::SymLink { is_dir: true })
    |                         ^^^^^^^
    |
    = note: for more information, see https://github.com/rust-lang/rust/issues/65721

error[E0658]: use of unstable library feature 'matches_macro'
  --> /root/.cargo/registry/src/github.com-1ecc6299db9ec823/lsd-0.19.0/src/flags/layout.rs:34:16
   |
34 |             || matches!(matches.values_of("blocks"), Some(values) if values.len() > 1)
   |                ^^^^^^^
   |
   = note: for more information, see https://github.com/rust-lang/rust/issues/65721

error[E0658]: use of unstable library feature 'matches_macro'
  --> /root/.cargo/registry/src/github.com-1ecc6299db9ec823/lsd-0.19.0/src/meta/filetype.rs:84:9
   |
84 |         matches!(self, FileType::Directory { .. } | FileType::SymLink { is_dir: true })
   |         ^^^^^^^
   |
   = note: for more information, see https://github.com/rust-lang/rust/issues/65721

error: aborting due to 7 previous errors

For more information about this error, try `rustc --explain E0658`.
error: failed to compile `lsd v0.19.0`, intermediate artifacts can be found at `/tmp/cargo-install56KFMN`

Caused by:
  could not compile `lsd`.

To learn more, run the command again with --verbose.
root@docker-desktop:/data#