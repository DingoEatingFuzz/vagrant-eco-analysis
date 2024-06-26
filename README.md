# Vagrant Eco Analysis

This is a look at public Vagrant data from public Vagrant repos (HashiCorp's as well as select community projects).

## To repeat analysis

1. Make sure to install the [git-data](https://github.com/dingoeatingfuzz/git-data) project
2. Make sure to install [DuckDB](https://duckdb.org/)
3. Make sure to install [Rill](https://www.rilldata.com/)
4. Exec `./get-data.sh` (with a `GITHUB_TOKEN` in your env)
5. Exec `./collate-data.sh`
6. Exec `./make-duck.sh`
7. Exec `rill start rill`
