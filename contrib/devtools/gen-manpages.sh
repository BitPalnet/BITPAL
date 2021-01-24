#!/usr/bin/env bash
# Copyright (c) 2016-2019 The BitPal Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.

export LC_ALL=C
TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

BITPALD=${BITPALD:-$BINDIR/bitpald}
BITPALCLI=${BITPALCLI:-$BINDIR/bitpal-cli}
BITPALTX=${BITPALTX:-$BINDIR/bitpal-tx}
WALLET_TOOL=${WALLET_TOOL:-$BINDIR/bitpal-wallet}
BITPALQT=${BITPALQT:-$BINDIR/qt/bitpal-qt}

[ ! -x $BITPALD ] && echo "$BITPALD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
read -r -a BTPVER <<< "$($BITPALCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }')"

# Create a footer file with copyright content.
# This gets autodetected fine for bitpald if --version-string is not set,
# but has different outcomes for bitpal-qt and bitpal-cli.
echo "[COPYRIGHT]" > footer.h2m
$BITPALD --version | sed -n '1!p' >> footer.h2m

for cmd in $BITPALD $BITPALCLI $BITPALTX $WALLET_TOOL $BITPALQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${BTPVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${BTPVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
