Shared Libraries
================

## bitpalconsensus

The purpose of this library is to make the verification functionality that is critical to BitPal's consensus available to other applications, e.g. to language bindings.

### API

The interface is defined in the C header `bitpalconsensus.h` located in `src/script/bitpalconsensus.h`.

#### Version

`bitpalconsensus_version` returns an `unsigned int` with the API version *(currently `1`)*.

#### Script Validation

`bitpalconsensus_verify_script` returns an `int` with the status of the verification. It will be `1` if the input script correctly spends the previous output `scriptPubKey`.

##### Parameters
- `const unsigned char *scriptPubKey` - The previous output script that encumbers spending.
- `unsigned int scriptPubKeyLen` - The number of bytes for the `scriptPubKey`.
- `const unsigned char *txTo` - The transaction with the input that is spending the previous output.
- `unsigned int txToLen` - The number of bytes for the `txTo`.
- `unsigned int nIn` - The index of the input in `txTo` that spends the `scriptPubKey`.
- `unsigned int flags` - The script validation flags *(see below)*.
- `bitpalconsensus_error* err` - Will have the error/success code for the operation *(see below)*.

##### Script Flags
- `bitpalconsensus_SCRIPT_FLAGS_VERIFY_NONE`
- `bitpalconsensus_SCRIPT_FLAGS_VERIFY_P2SH` - Evaluate P2SH ([BIP16](https://github.com/bitpal/bips/blob/master/bip-0016.mediawiki)) subscripts
- `bitpalconsensus_SCRIPT_FLAGS_VERIFY_DERSIG` - Enforce strict DER ([BIP66](https://github.com/bitpal/bips/blob/master/bip-0066.mediawiki)) compliance
- `bitpalconsensus_SCRIPT_FLAGS_VERIFY_NULLDUMMY` - Enforce NULLDUMMY ([BIP147](https://github.com/bitpal/bips/blob/master/bip-0147.mediawiki))
- `bitpalconsensus_SCRIPT_FLAGS_VERIFY_CHECKLOCKTIMEVERIFY` - Enable CHECKLOCKTIMEVERIFY ([BIP65](https://github.com/bitpal/bips/blob/master/bip-0065.mediawiki))
- `bitpalconsensus_SCRIPT_FLAGS_VERIFY_CHECKSEQUENCEVERIFY` - Enable CHECKSEQUENCEVERIFY ([BIP112](https://github.com/bitpal/bips/blob/master/bip-0112.mediawiki))
- `bitpalconsensus_SCRIPT_FLAGS_VERIFY_WITNESS` - Enable WITNESS ([BIP141](https://github.com/bitpal/bips/blob/master/bip-0141.mediawiki))

##### Errors
- `bitpalconsensus_ERR_OK` - No errors with input parameters *(see the return value of `bitpalconsensus_verify_script` for the verification status)*
- `bitpalconsensus_ERR_TX_INDEX` - An invalid index for `txTo`
- `bitpalconsensus_ERR_TX_SIZE_MISMATCH` - `txToLen` did not match with the size of `txTo`
- `bitpalconsensus_ERR_DESERIALIZE` - An error deserializing `txTo`
- `bitpalconsensus_ERR_AMOUNT_REQUIRED` - Input amount is required if WITNESS is used

### Example Implementations
- [NBitPal](https://github.com/NicolasDorier/NBitPal/blob/master/NBitPal/Script.cs#L814) (.NET Bindings)
- [node-libbitpalconsensus](https://github.com/bitpay/node-libbitpalconsensus) (Node.js Bindings)
- [java-libbitpalconsensus](https://github.com/dexX7/java-libbitpalconsensus) (Java Bindings)
- [bitpalconsensus-php](https://github.com/Bit-Wasp/bitpalconsensus-php) (PHP Bindings)
