{config, pkgs, ...}:
{
        environment.systemPackages = with pkgs; [
                go

                # rust 
                rustc
                cargo
                rust-analyzer
                rustfmt
                lldb # debuger
        ];
}
