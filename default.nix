with import <nixpkgs> { };

stdenv.mkDerivation rec {
  name = "wait-for-it-${version}";
  version = "1.0";

  src = fetchFromGitHub {
    owner = "vishnubob";
    repo = "wait-for-it";
    rev = "c096cface5fbd9f2d6b037391dfecae6fde1362e";
    sha256 = "1k1il4bk8l2jmfrrcklznc8nbm69qrjgxm20l02k01vhv2m2jc85";
  };
  installPhase = ''
    mkdir -p $out/bin
    cp ./wait-for-it.sh $out/bin
  '';

  buildInputs = [ ];
}
