{ pkgs ? import <nixpkgs> {} }:

pkgs.rustPlatform.buildRustPackage {
  pname = "r34-dlp";
  version = "0.1.0";

  src = ./.;

  cargoLock = {
    lockFile = ./Cargo.lock;
  };

  nativeBuildInputs = with pkgs; [
    pkg-config
  ];

  buildInputs = with pkgs; [
    openssl
  ];

  meta = with pkgs.lib; {
    description = "Rule34 image and video downloader with resume capability";
    homepage = "https://github.com/RustBlyat/r34-dlp";
    license = licenses.mit;
    mainProgram = "r34-dlp";
  };
}
