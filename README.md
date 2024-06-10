# Matchmaking Networks

<div align="center">
  <img src="https://github.com/S1M0N38/matchmaking-networks/assets/22257750/aa383746-37df-4c6b-9ffb-7a5af4552c93" alt="matchmaking-networks" width="333" height="333">
</div>


## Requirements

- `python -V` ≥ 3.11
- `pzstd -V` ≥ 1.5
- `Rust`

> Conda or similar like micromamba is recommended to manage the Python environment.
> Graph-tool is a bit tricky to install, so I recommend to use the conda-forge channel.
> Use `environment.yml` to create the environment.

## Data Preparation

Download `.png.zst` files from [database.lichess.org](https://database.lichess.org/) and place into `data/pgn` directory.

To converte the compress `.png.zst` files to `.csv` files, from the directory `scripts/pgn2csv`, run:

```bash
cargo run --release --bin blitz ../../data/pgn ../../data/csv
```

> *outliers.txt* contains a list of player with a account closed or banned. I manually
> update the list when I detect some anomalies in the data (e.g. suspicious high number
> of games).

## Data Analysis

- Notebook: `notebooks/matchmaking-networks.ipynb`
- Slides: [s1m0n38.github.io/matchmaking-networks/](https://s1m0n38.github.io/matchmaking-networks/)
- Summary: `notebooks/summary.md`
