# FoamExtendToolKit

## Scripts

### foamExtendSourceUbuntu.sh
`foamExtendSourceUbuntu.sh` installs all required dependencies and installs `foam-extend-5.0` from source for Ubuntu 22.04. It also echos the `foam-extend-5.0` source alias `fe50` into `~/.bashrc`, which will source `foam-extend-5.0/etc/bashrc`. Sudo access is required. Based off of [these instructions](https://sourceforge.net/p/foam-extend/foam-extend-5.0/ci/master/tree/doc/buildInstructions/Debian/Ubuntu/Ubuntu_22.04).

To run:

```bash
bash foamExtendSourceUbuntu.sh
```