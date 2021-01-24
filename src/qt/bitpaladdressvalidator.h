// Copyright (c) 2011-2014 The BitPal Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef BITPAL_QT_BITPALADDRESSVALIDATOR_H
#define BITPAL_QT_BITPALADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class BitPalAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit BitPalAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** BitPal address widget validator, checks for a valid bitpal address.
 */
class BitPalAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit BitPalAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // BITPAL_QT_BITPALADDRESSVALIDATOR_H
