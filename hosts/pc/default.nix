#default.nix
{
  pkgs,
  inputs,
  ...
}: {
  fonts.enable = true;
  programs.steam.enable = true;

  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    inputs.home-manager.nixosModules.default
    ./../../nixosModules/fonts/fonts.nix
    ./../../nixosModules/nixos/amdgpu.nix
    ./../../nixosModules/nixos/kernel.nix
  ];

  programs.git.enable = true;
  #Hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  environment.sessionVariables = {
    #WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";
  };

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [pkgs.xdg-desktop-portal-gtk];

  hardware = {
    graphics.enable = true;
  };

  services.xserver.videoDrivers = ["amdgpu"];

  #Sound with pipewire
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Bootloader.
  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
    };
    grub = {
      configurationLimit = 10;
      enable = true;
      efiSupport = true;
      device = "nodev";
      useOSProber = true;

      extraEntries = ''
               menuentry "Windows 10" {
          chainloader (hd1,1)+1
        }
      '';
    };
  };

  boot.supportedFilesystems = ["ntfs"];
  networking.hostName = "nixos"; # Define your hostname.

  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Chisinau";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.choppadrain = {
    isNormalUser = true;
    shell = pkgs.nushell;
    description = "nixos";
    extraGroups = [
      "networkmanager"
      "wheel"
      "tty"
      "audio"
      "video"
    ];
  };
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim
    waybar
    dunst
    libnotify
    firefox
    fastfetch
    swaynotificationcenter
    wl-clipboard
    grim
    slurp
    gamemode
    os-prober
    ntfs3g
    qt6.full
    kdePackages.dolphin
    libgbm
    fnm
    libreoffice
    hyprpolkitagent
    niri
    vulkan-tools
    mesa
    rpcs3
    # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    #  wget
  ];

  system.stateVersion = "25.05"; # Did you read the comment?
}
