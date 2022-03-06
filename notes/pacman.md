https://wiki.archlinux.org/title/Pacman/Tips_and_tricks


## Remove package with dependecies that it installed
`
pacman -Rcs $PACKAGE
`
(is -Rcsn better here? research)

## Recursively remove all "orphan" dependencies
Dependencies become "orphan" when you delete something that used them as a dependency,
so they are just taking up space with no use.
`
pacman -Qtdq | pacman -Rns -
`

## List explicitly installed packages (not marked as dependencies)

pacman -Qent
