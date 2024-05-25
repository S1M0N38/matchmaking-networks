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
