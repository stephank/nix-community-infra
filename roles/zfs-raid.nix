{
  # for mdraid 1.1
  boot.loader.grub.extraConfig = "insmod mdraid1x";
  services.telegraf.extraConfig.inputs.mdstat = { };

  fileSystems."/" = {
    device = "zroot/root/nixos";
    fsType = "zfs";
  };

  fileSystems."/home" = {
    device = "zroot/root/home";
    fsType = "zfs";
    # We don't want servers to go in systemd rescue mode, but rather having
    # failed mounts show up in monitoring
    options = [ "nofail" ];
  };

  fileSystems."/boot" = {
    device = "/dev/md127";
    fsType = "ext4";
    options = [ "nofail" ];
  };
}