# dotfiles

You probably want to run:

```
sudo apt update
sudo apt install git
git clone https://github.com/Scott3142/dotfiles.git
```

followed by:

```
mv dotfiles .dotfiles
cd .dotfiles
bash setup.sh
./install
```

You'll also need to manually redirect Chrome to download to `~/dl`

If you are using a machine which doesn't have SSH key access to github, you'll need to change the file `.gitmodules` and include the `https` link to `dotbot` instead.

If you do this, you'll have to run 

```
git submodule sync 
git submodule update --recursive --remote
```
