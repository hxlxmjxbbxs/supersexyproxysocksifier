# How to supersexyproxysocksify your shell
1. Config /etc/proxychains4.conf manually, choose socks4|socks5 and a port
2. Run
```
. ./supersexyproxysocksifier.sh
```
This will set all the env variables based on your proxychains configuration
At this point any command or tool (curl, gobuster, ffuf, nmap...) will be tunneled through the socks tunnel with no additional commandes.

3. If you want to unsupersexyproxysocksify your session run:
```
. ./supersexyproxysocksifier.sh unset
```
**NOTE:** Take in mind that this script will supersexyproxysocksify **ONLY** your current tab. **Sudo** commands won't be supersexyproxysocksified, so if you need root permissions try this script in a root session instead.
