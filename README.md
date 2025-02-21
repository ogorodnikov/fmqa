# FMQA

Factorization Machine Quantum Annealing (FMQA) algorithm for combinatorial optimization tasks.

## Installation

You can replace home directory ("~") with any directory of your choice)

Create and activate Venv environment:

```bash
python3 -m venv ~/fmqa_venv
source ~/fmqa_venv/bin/activate
```

Clone FMQA repository:

```bash
git clone https://github.com/ogorodnikov/fmqa.git ~/fmqa
```

Install FMQA package:

```bash
pip install --upgrade pip
pip install ~/fmqa
```

To run examples - please install Jupyter Lab and create "FMQA" kernel to use in notebooks:

```bash
pip install ipykernel pickleshare
ipython kernel install --name="FMQA" --user
jupyter kernelspec list
```

## Examples

1 - [Portfolio Optimization](examples/01_portfolio_fmqa.ipynb) \
2 - [Protein Synthesis](examples/02_proteins_fmqa.ipynb)

## Acknowledgments

This software package was originally developed by Mykhailo Ohorodnikov at SoftServe Inc.

## Papers

Factorization machines. \
https://ieeexplore.ieee.org/document/5694074

Machine Learning Framework for Quantum Sampling of Highly-Constrained, Continuous Optimization Problems. \
https://arxiv.org/abs/2105.02396

Designing metamaterials with quantum annealing and factorization machines. \
https://journals.aps.org/prresearch/abstract/10.1103/PhysRevResearch.2.013319

## Contacts

[mykhailo.ohorodnikov@gmail.com](mailto:mykhailo.ohorodnikov@gmail.com)