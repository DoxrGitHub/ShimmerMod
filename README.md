<div align="center">
    <h1>SH1mmerMod</h1>
</div>

## What is this?
SH1mmerMod (heavily based on RecoMod, which is a script that will install a custom utility toolkit into a standard chromeOS recovery image) adds most Sh1mmer legacy features to the RecoMod UI so people who don't have a leaked shim can execute stuff

This is also useful for if the keys for your shim ever get rolled. You'll still be able to use SH1mmer legacy (which has more features than regular shimmer btw)

## What can it do?
Making sure you're in devmode, when you plug in a recovery image patched with this tool it will boot into a utility menu

![image](https://github.com/MercuryWorkshop/RecoMod/assets/58010778/97ed0e69-b756-4b0a-90bb-38bc29b4b69f)
> I'll get this changed soon to SH1mmerMod

The toolkit is easy to modify so new SH1mmer stuff can be added if they ever come.

Note that only x86_64 chromebooks are supported, with arm images needing the --minimal flag to work (no UI will be shown and I honestly don't know what would happen)
## How do I use it?
The build script must be ran on linux. If you don't have linux, a VM can be used. WSL may work but is not officially supported. Crostini may work and it might not. Doing it in chromeos's crosh shell may work or may not.

First, grab the script itself.
```
git clone https://github.com/DoxrGitHub/ShimmerMod
cd ShimmerMod
chmod +x shimmermod.sh
```
Now, you need the actual recovery image itself. Head on over to either [chrome100.dev](https://chrome100.dev/) or [chromiumdash-serving-builds](https://chromiumdash.appspot.com/serving-builds?deviceCategory=ChromeOS) to get an image for your board.
If using the former, a R107 image is known to be most stable.

Unzip the file you downloaded and now actually build the image.
```
./shimmermod.sh -i /path/to/recovery/image.bin #[optional flags]
```
(run ./recomod.sh --help for a list of all build flags)

The script modifies the image in place, and once that's done, you can flash it with any USB flashing tool and plug it in your chromebook/box the same way you would a normal recovery image.


note for wsl users: ensure the image you want to modify is in your wsl (not windows) filesystem. WSL is not guarenteed to work

additional tip: you're going to have to wait 5 minutes before the menu loads due to a ChromeOS restriction, **UNLESS** you have rootfs verification disabled on both partitions, so do that before using it.

original work by mercury workshop


silly edits by doxr