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


**[cosmoshub4-2021-09-27.json.gz](./cosmoshub4-2021-09-27.json.gz)**
- exported with gaia v5.0.6
- cosmosSDK v0.42.9

```
gaiad export > cosmoshub4-2021-09-27.json
```

```sh
gzip -d cosmoshub4-...json.gz
```
