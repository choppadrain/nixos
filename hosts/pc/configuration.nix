# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
 { config, pkgs, lib, inputs, ... }:  


 {
  programs.steam.enable = true;

  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  #Hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
   environment.sessionVariables = {
     WLR_NO_HARDWARE_CURSORS = "1";
     #NIXOS_OZONE_WL = "1";
  };		  

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  
  hardware = {
    opengl.enable = true;
    nvidia.modesetting.enable = true;
    nvidia.open = false;
  };

  services.xserver.videoDrivers = ["nvidia"];

  #Sound with pipewire
  security.rtkit.enable = true;
  services.pipewire = {
	enable = true;
	alsa.enable = true;
	alsa.support32Bit = true;
	pulse.enable = true;
	jack.enable = true;
       };

  nix.settings.experimental-features = ["nix-command" "flakes"];

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
        };
    };
    boot.supportedFilesystems = [ "ntfs" ];
  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
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
    description = "nixos";
    extraGroups = [ "networkmanager" "wheel" "tty" "audio" "video" ];
    packages = with pkgs; [];
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
  hyprpaper
  kitty
  wofi
  firefox
  neovim
  fastfetch
  vesktop
  rofi-wayland
  telegram-desktop
  swaynotificationcenter
  wl-clipboard
  grim
  slurp
  gamemode
  os-prober
  ntfs3g
  yazi
  qt6.full
  prismlauncher
  home-manager
  git
# Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?


}
