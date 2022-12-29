

set -o errexit -o pipefail -o nounset

packages=(
  base
  base-devel        
  bash              
  git               
  archlinux-keyring
  archiso
  mkinitcpio-archiso 
)

pacman -Syu --noconfirm --needed --overwrite '*' "${packages[@]}"
