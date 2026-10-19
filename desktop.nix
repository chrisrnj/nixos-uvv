{ ... }:

{
  qt = {
    enable = true;
    platformTheme = "kde";
    style = "breeze";
  };

  environment.sessionVariables = {
    KWIN_WAYLAND_SUPPORT_XX_PIP_V1 = "1"; # Experimental wayland pip protocol.
    KWIN_DRM_USE_COLOR_PIPELINE = "1"; # Enable direct scanout.
    NIXOS_OZONE_WL = "1"; # Use ozone wayland.
  };

  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.plasma-login-manager.enable = true;
  services.desktopManager.plasma6.enable = true;
  xdg.portal.config.common.default = [ "kde" "gtk" ];

  # Remover aplicações desnecessárias do KDE.
  programs.kde-pim.enable = false;

  # Enable automatic login for the user.
  services.displayManager.autoLogin = {
    enable = true;
    user = "tux";
  };
}
