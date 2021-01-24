BitPal Core
=============

Setup
---------------------
BitPal Core is the original BitPal client and it builds the backbone of the network. It downloads and, by default, stores the entire history of BitPal transactions, which requires a few hundred gigabytes of disk space. Depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download BitPal Core, visit [bitpal.com](https://www.bit-pal.net/en/download/).

Running
---------------------
The following are some helpful notes on how to run BitPal Core on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/bitpal-qt` (GUI) or
- `bin/bitpald` (headless)

### Windows

Unpack the files into a directory, and then run bitpal-qt.exe.

### macOS

Drag BitPal Core to your applications folder, and then run BitPal Core.

### Need Help?

* See the documentation at the [BitPal Wiki](https://en.bitpal.it/wiki/Main_Page)
for help and more information.
* Ask for help on [#bitpal](https://webchat.freenode.net/#bitpal) on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#bitpal).
* Ask for help on the [BitPalTalk](https://bitpaltalk.org/) forums, in the [Technical Support board](https://bitpaltalk.org/index.php?board=4.0).

Building
---------------------
The following are developer notes on how to build BitPal Core on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [Dependencies](dependencies.md)
- [macOS Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [FreeBSD Build Notes](build-freebsd.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [NetBSD Build Notes](build-netbsd.md)
- [Gitian Building Guide (External Link)](https://github.com/bitpal-core/docs/blob/master/gitian-building.md)

Development
---------------------
The BitPal repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Productivity Notes](productivity.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://doxygen.bitpal.com/)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [JSON-RPC Interface](JSON-RPC-interface.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [BitPalTalk](https://bitpaltalk.org/) forums, in the [Development & Technical Discussion board](https://bitpaltalk.org/index.php?board=6.0).
* Discuss project-specific development on #bitpal-core-dev on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#bitpal-core-dev).
* Discuss general BitPal development on #bitpal-dev on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#bitpal-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [bitpal.conf Configuration File](bitpal-conf.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Memory](reduce-memory.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)
- [PSBT support](psbt.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
