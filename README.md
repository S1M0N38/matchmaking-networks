# matchmaking-graph

What's the emerging graph of matchmaking algorithms?

## Requirements

- `python -V` ≥ 3.11
- `pzstd -V` ≥ 1.5
- `Rust`

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
- Slides: [s1m0n38.github.io/matchmaking-graph/](https://s1m0n38.github.io/matchmaking-graph/)
- Summary: `notebooks/summary.md`
