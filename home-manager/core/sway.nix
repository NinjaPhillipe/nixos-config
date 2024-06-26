{ config, list, pkgs, ...}:
{
        wayland.windowManager.sway = {
                enable = true;
                config = rec {
                        modifier = "Mod1";
                        terminal = "kitty"; 
                };
                extraConfig = ''
                        # Brightness
                        bindsym XF86MonBrightnessDown exec light -U 10
                        bindsym XF86MonBrightnessUp exec light -A 10
                '';
        };
}
