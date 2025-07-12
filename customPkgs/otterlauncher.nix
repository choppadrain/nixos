#gave up on that cuz lacks of knowledge

{
  lib,
  rustPlatform,
  fetchFromGithub,
  installShellWrappers,
  makeWrapper,
}: {
    rustPlatform.buildRustPackage rec {
        pname = "otter-launcher";
        version = "0.5.1";
    };

  src = fetchFromGithub {
    owner = "kuokuo123";
    repo = "otter-launcher";
    rev = "0.5.1";
    hash = "sha256";
  };


  cargoHash = "";

  #configFile = pkgs.writeTextDir "config/otter-launcher/config.toml" ''
  #'';

  meta = {
    description = "fast tui app-launcher in rust";
    homepage = "https://github.com/kuokuo123/otter-launcher";
    mainProgram = "otter-launcher";
    maintainers = with lib.maintainers; [
      choppadrain
    ];
  };
}
