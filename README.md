# :green_apple: Hackintosh Beelink SER5 MAX 5800H

![OpenCore version](https://img.shields.io/badge/OpenCore-1.0.2-blue?style=flat-square&logo=circle) ![macOS version](https://img.shields.io/badge/macOS-Sonoma-green?style=flat-square&logo=apple)

## :computer: Specification

| **Hardware** | **Detail**                   |
| ------------ | ---------------------------- |
| **CPU**      | AMD Ryzen 7 5800H Processor  |
| **GPU**      | AMD Radeon Vega 8            |
| **RAM**      | Gloway 16GB 3200MHz DDR4 x 2 |
| **SSD**      | Phison 512GB NVMe SSD        |
| **Display**  | AOC Q240VXQ 23.8" 2560x1440p |
| **Audio**    | Realtek ALC897               |
| **Ethernet** | Realtek RTL8168              |
| **Wireless** | Intel Wi-Fi 6 AX200          |
| **SMBIOS**   | `iMac20,1`                   |

## :unlock: BIOS Settings

1. Advanced -> AMD CBS -> NBIO Common Options -> SMU Common Options -> System Mode Configuration -> `Balance Mode`
2. Advanced -> AMD CBS -> NBIO Common Options -> GFX Configuration -> UMA Frame buffer Size -> `4G`

## :hammer_and_wrench: Usage

> [!TIP]
If the installation cannot be completed successfully, try setting `SecureBootModel` to `Disabled`.

1. Generate SMBIOS info and put it into `config.plist`.
2. Put your EFI into EFI partition.

   ```sh
   # Find EFI partition
   diskutil list

   # Mount EFI partition
   sudo diskutil mount disk0s1

   # Copy EFI to /Volumes/EFI
   cp -a /path/to/your/EFI /Volumes/EFI/

   # Umount EFI partition
   diskutil umount disk0s1
   ```

3. Additionals:

   ```sh
   # Enable HiDPI (optional)
   curl -sSL https://github.com/pexcn/hackintosh-beelink-ser5-max-5800h/raw/master/extras/hidpi/enable.sh | sudo sh -
   ```

## :rocket: Updating

Before macOS updating, make sure the following changes:

1. Make sure SIP enabled.
2. Set `SecureBootModel` to `Disabled`.
3. Add `-v` into `boot-args` to enable verbose logging.

After update is completed, undo the above changes.

## :x: Not Working

- iGPU hardware decode
