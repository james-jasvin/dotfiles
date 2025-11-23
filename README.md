# Description
- Easy to setup dotfiles config for K8s admins (especially AWS)

# Pre-Requisites
- This dotfiles repo assumes that you have zsh installed and setup as your default shell

# Installation
Simply run the bootstrap script and you should have the dotfiles env setup
```
chmod +x bootstrap
./bootstrap
```

# What does the Bootstrap script do?
- Sets up fzf
- Installs plugins for it like fzf-tab, zsh-autosuggestions
- Installs the FiraCode Nerd Font
- Installs Starship with a custom configuration that is stored at starship/starship.toml
  
# Credits
- Nick Janetakis @ https://www.youtube.com/watch?v=eKkFbvanlP8
- Henry Misc @ https://www.youtube.com/watch?v=v2S18Xf2PRo

# Features
- Thanks to Nick Janetakis once again for these:
  - View fzf in preview mode for all files in current directory with "fzfp"
  - Reload zsh config with "srczsh"
- Shell functions:
  - Add an AWS EKS cluster to your kubeconfig with "awsekslogin"
  - Switch AWS profile instantly (assuming your log in is valid) with "awschprofile"
  - SSH to an EC2 instance using AWS EC2 Instance Connect with "awsec2instanceconnect"
  - Check whether a specific CVE is present in a Docker image with "grypecve"
  - Fetch all the certificates that are associated with a given hostname with "allthecerts"
- Starship:
  - View the current Kube context as part of your prompt by running "kubeon" and turning it off by running "kubeoff"
  - View the current AWS profile
  - View the current Git config like branch, commit status