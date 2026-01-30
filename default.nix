{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  pname = "aether-sync";
  version = "1.0.0";

  src = pkgs.fetchFromGitHub {
    owner = "DavidTX2000";
    repo = "aether-sync";
    rev = "distribution";
    sha256 = "21e01698580ca8a85c5e9b8cc2973e6d4256e1804570c7acf449e695df094f0d"; 
  };

  installPhase = ''
    mkdir -p $out/bin
    cp aether $out/bin/
    chmod +x $out/bin/aether
  '';

  meta = with pkgs.lib; {
    description = "Stealth isolation and environment management for terminal emulation";
    homepage = "https://github.com/DavidTX2000/aether-sync";
    license = licenses.mit;
    platforms = platforms.linux;
  };
}
