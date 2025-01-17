# bash-scripts

## Contents

    In this repository I store bash scripts that I develop, useful or time-saving for me

- new_system.sh:

    1. useful and time-saving when starting new linux install

    2. updates system system, and install many useful packages for me

- install_flutter.sh

    1. install flutter, and android-studio, and configure some system things

- extra_things.sh

    1. Install nordvpn app.

## How to use

Run:

    ```bash
    chmod +x <script_name>.sh
    ./<script_name>.sh
    ```

## Extra info ([source](https://askubuntu.com/questions/343268/how-to-use-manual-partitioning-during-installation/343352#343352))

When sideloading ubuntu with windows previously installed, select manually by using "Something else" option.

- swap
  - type: primary
  - beginning of space
  - use as: swap area
- / (root)
  - type: logical
  - location: beginning of space
  - use as: ext4
  - mount point: /
  - size: (10 - 20gb) (20480mb) [if installing cuda in a nvidia machine make it 35gb or 35840mb]
- /home
  - 4 first options same as / (root)
  - choose your home size accordingly (all free space in hard drive)
- device for boot loader being main drive (if there is windows, choose the same one)

## Useful commands

- [manual config brightness keys](https://askubuntu.com/questions/798203/changing-screen-brightness-through-keyboard-functions-on-my-notebook)

```bash
ssh-keygen -t ed25519 -C "<example@email.com>"
```

- [create bootable liveimage using hdd partition instead of usb](https://askubuntu.com/questions/1156490/make-a-hdd-partition-work-like-usb-bootable-in-ubuntu)

- [fix slow boot by defining suspend/hibernate SWAP UUID](https://askubuntu.com/questions/1240123/how-to-enable-the-hibernate-option-in-ubuntu-20-04)

- [move spotify to system tray](https://www.maketecheasier.com/minimize-spotify-to-system-tray-linux/)

- [change ubuntu actions for sleep (supend/hibernate) on lid close, etc](https://ubuntuhandbook.org/index.php/2020/05/lid-close-behavior-ubuntu-20-04/)

- ```bash
  # scan local network
  sudo nmap -sn 192.168.18.0/24
  # for simple ip up scan, faster
  sudo nmap -sn -n -host-timeout 1 192.168.18.0/24
  ```

- ```bash
  # All commits started from the next after 8fd7b22 will be rebased with no changes except signing
  git rebase --exec 'git commit --amend --no-edit -n -S' -i 8fd7b22
  # To change all commits started from the very first one you may use --root
  git rebase --exec 'git commit --amend --no-edit -n -S' -i --root
  #Return commit date as author date and force push (don't forget to backup before).
  git rebase --committer-date-is-author-date -i --root # return 
  git push --force
  ```
  -> [source](https://stackoverflow.com/questions/41882919/is-there-a-way-to-gpg-sign-all-previous-commits)