{ lib, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "function-runner";
  version = "3.2.4";

  src = fetchFromGitHub {
    owner = "Shopify";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-wppEnNsh8E8GY7iAQUNnaAqmoRZynD0s23xaOVig8vY=";
  };

  cargoHash = "sha256-D5oEAHB/1EIsE83b+Ph4LZzbag0qZB3Bz2/Rc3NXRtI=";

  meta = with lib; {
    description = "A CLI tool which allows you to run Wasm Functions intended for the Shopify Functions infrastructure";
    homepage = "https://github.com/Shopify/function-runner";
    license = licenses.asl20;
    maintainers = with maintainers; [ nintron ];
  };
}
