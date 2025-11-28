# Arch Installation Guide

This guide is assumes that you already know a little of how linux systems works. The system has to be booted in UEFI mode and has a 64-bit x64 UEFI.

## contents

- [Prerequisites](#prerequisites)
- [Set up](#set-up-the-console-for-comfort)
- [Disk Partionning](#partitionning-the-Disk)



## 1. Prerequisites

1. \>= **1GB USB Flash Drive**
2. \>= **20GB** of **storage** 
3. The Arch **ISO** on the UBS stick

## 2. Set up the console for comfort

1. set the keyboard layout to yours

   The default layout is **US QWERTY**.   

   1. Find the **avaible layouts**:

   ```bash
   localectl list-keymaps
   ```

   2. Set it the **correct layout**:

   ```bash
   loadkeys fr-pc    # use your layout instead of fr-pc		
   ```

   3. Make it easier to read with this **font**:

   ```bash
   setfont ter-132b
   ```

## 3. Partitionning the Disk

First, verify that your systemis booted in **UEFI** mode and has a **64-bit x64 UEFI**.

```bash
cat /sys/firmware/efi/fw_platform_size
```

1. **Identify** the **partition** on which you will install Arch linux

   ```bash
   lsblk
   # or
   fdisk -l
   ```

   **TIP**: You can recognise your disk with its size too!    

   The **name of the disk** should be **similar** to : `/dev/sda` or `dev/nvme0n1` or `/dev/mmcblk0`.     

   You can **ignore** partions **ending** in: `loop`, `rom` or `airootfs`

2. We are going to **use** the `fdisk` to **partition** the **disk**:

   |                | Boot | Swap | Main                                     |
   | -------------- | ---- | ---- | ---------------------------------------- |
   | Suggested size | 1Gb  | 4Gb  | at least 32Gb (give the whole partition) |

   | name | `/dev/

   If you are **dual booting**, **SKIP** the **boot** related parts.    

   The Boot partition will where we install GRUB, this is what makes your OS start.    

   The Swap is if your ram fails or is overflows, the data will go there.    

   Finally, the main partition is where your OS, your data and everything will be
