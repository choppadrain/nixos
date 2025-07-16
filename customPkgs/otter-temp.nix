{
  lib,
  rustPlatform,
  fetchFromGitHub,
  ...
}:
rustPlatform.buildRustPackage rec {
  pname = "otter-launcher";
  version = "0.5.1";

  src = fetchFromGitHub {
    owner = "kuokuo123";
    repo = "otter-launcher";
    rev = "0.5.1";
  };

  cargoHash = "";

  meta = {
    description = "fast tui app-launcher in rust";
    homepage = "https://github.com/kuokuo123/otter-launcher";
    mainProgram = "otter-launcher";
    maintainers = with lib.maintainers; [
      choppadrain
    ];
  };
}
