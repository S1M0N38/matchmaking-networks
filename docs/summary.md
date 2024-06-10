> The following is an AI generated summary based on slides and transcription from the presentation.

______________________________________________________________________

## Exploring Matchmaking Networks: An Analysis of Chess Games

Ensuring balanced and enjoyable matches is crucial in competitive gaming to maintain player engagement and satisfaction. This project focuses on matchmaking networks, which emerge from algorithms designed to pair players based on their skill levels. Using a dataset of chess games played on lichess.org between 2014 and 2016, this study explores the dynamics and characteristics of these networks.

### Introduction to Matchmaking Networks

Matchmaking networks start with a pool of players, each represented as a node. The goal is to pair these players in a way that makes the matches balanced and enjoyable. Each player has an associated rating, represented by a color: yellow for the strongest players and dark purple for the weakest. Players with similar ratings are more likely to be paired, and each time a match is played between two players, the weight of the link (edge) between them increases by one.

### The Rating System

Many matchmaking algorithms rely on a rating system to ensure fair matches. A rating system assigns a scalar value that quantifies a player's strength relative to others. One of the most well-known rating systems is the Elo system, used in various board games like chess, Go, and backgammon, as well as in video games and sports. The Elo system estimates a player's rating based on their wins, losses, and draws against other players. The Elo rating system follows a logistic distribution and can be modeled using a Gumbel distribution for the ratings.

### The Lichess Dataset

The dataset used in this project contains games played on lichess.org, which employs the Glicko-2 rating system, an improvement over the Elo system. Matchmaking on lichess pairs players with similar ratings within a certain range. The analysis includes 172,195 nodes (players) and 30,081,979 edges (matches) to explore the network's characteristics.

### Distribution of Players and Matches

The distribution of player ratings in the dataset does not follow a Gumbel distribution or a normal distribution but presents a bell curve shape. Even though very strong players do not play many matches, the majority of match results come from medium to medium-strong players, as there are more players in the middle range than at the extremes.

### Characteristics of the Matchmaking Graph

The graph that emerges from this matchmaking algorithm shows several interesting characteristics:

- **Assortativity:** The network exhibits high assortativity, meaning players are more likely to be matched with others of similar rating.
- **Degree Distribution:** The degree distribution does not follow a power-law, likely due to physical limits on the number of matches a player can play in a month and topological limits related to the matchmaking algorithm.
- **Distances:** Calculations over a sample of 2000 nodes show an average distance of 2.9 and a pseudo-diameter of 8.

### Reduced Graph

To reduce noise and analyze the network further, a reduced graph was created by grouping players within the same rating bin into a single node. This reduced graph has 39 nodes, with each node representing a bin of size 50. Links in this graph represent games between players in different bins and include self-loops for games within the same bin. This reduced graph remains directed and weighted.

### Simple Matchmaking Model

A simple model was developed to generate a matchmaking network. Starting with a fixed set of nodes with ratings drawn from a normal distribution, the model selects a source node and pairs it with a target node based on a distribution centered on the source node. This process involves:

1. Starting from a fixed set of nodes with a given rating.
1. Selecting a random node as the source.
1. Sampling a rating from a distribution centered on the source node.
1. Adding an edge to the node with the closest rating.
1. Repeating the process to build the network.

The resulting graph demonstrates a gradient in player ratings and confirms high assortativity. The adjacency matrix plotted with nodes ordered by rating also shows significant assortativity.

### Conclusion

This project illustrates how matchmaking algorithms shape the structure of game networks and how these networks can be analyzed to enhance the gaming experience. By examining real game datasets and creating theoretical models, a better understanding of competitive gaming dynamics can be achieved, leading to more effective matchmaking algorithms. This work contributes to the ongoing effort to improve player satisfaction and engagement through balanced and enjoyable matches.
