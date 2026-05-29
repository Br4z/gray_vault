---
reviewed on: 2026-05-28
---

# How to Set the CachyOS Kernel and Repositories in Arch

This guide provides a streamlined version of the steps documented in the [official CachyOS guide](https://github.com/CachyOS/linux-cachyos/blob/master/README.md). If any command fails or behaves unexpectedly, the upstream documentation should be checked, as repository names, package versions, or mirrorlist details may have changed.

CachyOS also provides a script to automate this process. However, that script replaces the original `pacman` package manager with a CachyOS fork. The CachyOS documentation notes that this can introduce issues with standard Arch workflows, so the manual approach is used here. The script remains an option.

## Repositories

Systems using AMD Zen 4 or Zen 5 CPUs may benefit from the CachyOS `znver4` repositories, which provide precompiled packages optimized for those architectures.

1. Import the CachyOS signing key

    ```bash
    sudo pacman-key --recv-keys F3B607488DB35A47 --keyserver keyserver.ubuntu.com
    sudo pacman-key --lsign-key F3B607488DB35A47
    ```

2. Install only the keyring and v4 mirrorlist.

    ```bash
    cd /tmp

    curl -LO https://mirror.cachyos.org/repo/x86_64/cachyos/cachyos-keyring-20240331-1-any.pkg.tar.zst
    curl -LO https://mirror.cachyos.org/repo/x86_64/cachyos/cachyos-v4-mirrorlist-27-1-any.pkg.tar.zst
    
    sudo pacman -U ./cachyos-keyring-20240331-1-any.pkg.tar.zst ./cachyos-v4-mirrorlist-27-1-any.pkg.tar.zst
    ```

    According to the CachyOS documentation, both x86-64-v4 and znver4 use `/etc/pacman.d/cachyos-v4-mirrorlist` mirrorlist.

3. Add the `znver4` repos to `/etc/pacman.conf`.

    ```bash
    sudo nvim /etc/pacman.conf
    ```

    Add the following entries above the Arch repositories, such as `[core]`, `[extra]` and `[multilib]`:

    ```txt
    # CachyOS Zen 4/5 optimized repositories
    [cachyos-znver4]
    Include = /etc/pacman.d/cachyos-v4-mirrorlist
    
    [cachyos-core-znver4]
    Include = /etc/pacman.d/cachyos-v4-mirrorlist
    
    [cachyos-extra-znver4]
    Include = /etc/pacman.d/cachyos-v4-mirrorlist
    ```

4. Sync and upgrade: `sudo pacman -Syu`.

    Optionally, native packages can be replaced with CachyOS builds by running `pacman -Qqn | sudo pacman -S -`.

## Kernel

After the CachyOS repositories have been configured, the CachyOS kernel and headers can be installed with `sudo pacman -S linux-cachyos linux-cachyos-headers`.

A new bootloader entry should then be created. The following example assumes `systemd-boot` is being used with an EFI system partition. Create a new entry under `/boot/loader/entries/`:

```txt
title   Arch Linux (CachyOS kernel)
linux   /vmlinuz-linux-cachyos
initrd  /amd-ucode.img
initrd  /initramfs-linux-cachyos.img
options root=UUID=YOUR-EXISTING-ROOT-UUID rw
```

The existing root UUID should be reused from the current Arch boot entry. After saving the new entry, rebooting should make the CachyOS kernel available from the bootloader menu.
