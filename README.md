# mainnet

## exported json
- Stop gaia process.
- Use appropriate gaia node version.

**[cosmoshub4-2021-02-18.json.gz](./cosmoshub4-2021-02-18.json.gz)**
- exported with gaia v4.2.1
- cosmosSDK v0.42.4

```
gaiad export --height 5200800 > cosmoshub4-2021-02-18.json
```

```
$ shasum -a 256 cosmoshub4-2021-02-18.json
5e0f1fd1a0fdcc67b9c308e7f6f0d6901ff3367620bda9beb0186b5492ea3fae  cosmoshub4-2021-02-18.json
```


**[cosmoshub4-2021-11-01.json.gz](./cosmoshub4-2021-11-01.json.gz)**
- exported with gaia v5.0.6
- cosmosSDK v0.42.9

```
gaiad export > cosmoshub4-2021-11-01.json
```

```
shasum -a 256 cosmoshub4-2021-11-01.json
67933944de8f82a17bf1296842814ea82d3cb38ae6b38c7b79577e20496139f8  cosmoshub4-2021-11-01.json
```

```sh
gzip -d cosmoshub4-...json.gz
```
