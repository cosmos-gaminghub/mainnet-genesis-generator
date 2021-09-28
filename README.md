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


**[cosmoshub4-2021-09-27.json.gz](./cosmoshub4-2021-09-27.json.gz)**
- exported with gaia v5.0.6
- cosmosSDK v0.42.9

```
gaiad export > cosmoshub4-2021-09-27.json
```

```
$ shasum -a 256 cosmoshub4-2021-09-27.json
acf1a777d7940648e5a9e42f34f024fa0c824d72f246e8f2be659d477289fdd7  cosmoshub4-2021-09-27.json
```

```sh
gzip -d cosmoshub4-...json.gz
```
