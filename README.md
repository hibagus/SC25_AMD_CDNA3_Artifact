<!-- PROJECT SHIELDS -->
[![DOI][doi-shield]][doi-url]
[![License][license-shield]][license-url]
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/hibagus/SC25_AMD_CDNA3_Artifact">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">SC25 Artifact: Characterization of AMD Instinct MI300X and MI325X (CDNA3)</h3>

  <p align="center">
    Reproducibility artifacts for the Supercomputing 2025 (SC25) paper on comprehensive performance characterization of AMD CDNA3 GPUs.
    <br />
    <a href="https://doi.org/10.5281/zenodo.16945427"><strong>Zenodo Archive »</strong></a>
    &nbsp;·&nbsp;
    <a href="https://dl.acm.org/doi/full/10.1145/3712285.3759768"><strong>ACM Paper »</strong></a>
    <br />
    <br />
    <a href="https://github.com/hibagus/SC25_AMD_CDNA3_Artifact">View Repository</a>
    ·
    <a href="https://github.com/hibagus/SC25_AMD_CDNA3_Artifact/issues">Report Issue</a>
  </p>
</p>

<!-- ACM ARTIFACT BADGES -->
<p align="center">
  <img src="images/artifacts_available_v1_1.png" alt="Artifact Available v1.1" height="100">
  &nbsp;&nbsp;
  <img src="images/artifacts_evaluated_functional_v1_1.png" alt="Artifact Evaluated/Functional v1.1" height="100">
</p>

---

<!-- PAPER INFORMATION -->
## Paper

**Title:** Characterizing Performance, Power, and Energy of AMD CDNA3 GPU Family

**Authors:** Bagus Hanindhito and Bhavesh Patel
*(Dell Technologies, Round Rock, Texas, USA)*

**Venue:** The International Conference for High Performance Computing, Networking, Storage and Analysis (SC '25), November 16–21, 2025, St. Louis, MO, USA

**DOI:** [https://doi.org/10.1145/3712285.3759768](https://dl.acm.org/doi/full/10.1145/3712285.3759768)

### Abstract

> While historically used for graphics applications, Graphics Processing Units (GPUs) have become the most prominent hardware for accelerating parallel workloads, including HPC and AI/ML. As the demand for GPUs skyrockets, AMD released the CDNA3 architecture to accelerate HPC and generative AI. This paper serves as a comprehensive third-party evaluation of the AMD CDNA3 GPU, specifically the MI300X and MI325X, by characterizing their performance, power, and energy efficiency using microbenchmark and real-world applications.
>
> First, we develop a microbenchmark to investigate the computing capability of the Compute Unit and measure device-wide scaling. Secondly, we measure both on-chip and off-chip memory access latency and bandwidth, and communication link bandwidth between devices. Thirdly, we subject both GPUs to real-world applications. Although MI325X gives the highest performance, the best energy efficiency is often obtained by capping the MI325X at the same power level as MI300X, with the higher HBM3E bandwidth solely contributing to performance improvements.

### CCS Concepts

- **General and reference** → Measurement; Performance; Experimentation; Evaluation
- **Computer systems organization** → Parallel architectures
- **Computing methodologies** → Natural language generation; Computer algebra systems; Graphics processors

### Keywords

Graphics Processing Unit, Performance Characterization, Power and Energy Measurement, High Performance Computing, Large Language Models Serving, Microbenchmark

### ACM Reference Format

Bagus Hanindhito and Bhavesh Patel. 2025. Characterizing Performance, Power, and Energy of AMD CDNA3 GPU Family. In The International Conference for High Performance Computing, Networking, Storage and Analysis (SC '25), November 16–21, 2025, St Louis, MO, USA. ACM, New York, NY, USA, 15 pages. https://doi.org/10.1145/3712285.3759768

---

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li><a href="#paper">Paper</a></li>
    <li><a href="#about-the-project">About The Project</a></li>
    <li><a href="#repository-structure">Repository Structure</a></li>
    <li><a href="#prerequisites">Prerequisites</a></li>
    <li><a href="#getting-started">Getting Started</a></li>
    <li>
      <a href="#artifacts">Artifacts</a>
      <ul>
        <li><a href="#a1--vector-alu-performance">A1 — Vector ALU Performance</a></li>
        <li><a href="#a2--matrix-core-performance">A2 — Matrix Core Performance</a></li>
        <li><a href="#a3--memory-latency-and-bandwidth">A3 — Memory Latency and Bandwidth</a></li>
        <li><a href="#a4--communication-interface-bandwidth">A4 — Communication Interface Bandwidth</a></li>
        <li><a href="#a5--gemm">A5 — GEMM</a></li>
        <li><a href="#a6--gemv">A6 — GEMV</a></li>
        <li><a href="#a7--high-performance-linpack-hpl">A7 — High-Performance LINPACK (HPL)</a></li>
        <li><a href="#a8--high-performance-conjugate-gradient-hpcg">A8 — High-Performance Conjugate Gradient (HPCG)</a></li>
        <li><a href="#a9--gromacs-molecular-dynamics-simulation">A9 — GROMACS Molecular Dynamics Simulation</a></li>
        <li><a href="#a10--llm-inference-serving">A10 — LLM Inference Serving</a></li>
      </ul>
    </li>
    <li><a href="#data">Data</a></li>
    <li><a href="#power-capping-mi325x">Power-Capping MI325X</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>

---

<!-- ABOUT THE PROJECT -->
## About The Project

This repository contains the **code and data artifacts** for the SC25 paper that provides a comprehensive characterization of AMD CDNA3 GPUs — specifically the **AMD Instinct MI300X** and **AMD Instinct MI325X**. The paper covers:

- **C1/C3** — Vector ALU performance (scalar-vector and vector-vector operations, fp16/fp32/fp64) at both the Compute Unit (CU) level and device-wide scalability.
- **C2/C4** — Matrix core performance (fp8/bf8/fp16/bf16/tf32/fp32/fp64) at both the CU level and device-wide scalability.
- **C5/C6** — On-chip memory (L1, L2, last-level AMD Infinity Cache) latency/bandwidth, and off-chip memory (HBM3 on MI300X, HBM3E on MI325X) bandwidth.
- **C7** — CPU↔GPU and GPU↔GPU communication interface bandwidth.
- **C8** — GEMM and GEMV performance comparison (MI300X vs. MI325X, including power-capped modes).
- **C9** — High-Performance LINPACK (HPL) comparison.
- **C10** — High-Performance Conjugate Gradient (HPCG) comparison.
- **C11** — GROMACS molecular dynamics simulation (STMV, 1M atoms) comparison.
- **C12** — DeepSeek R1 (671B parameters) LLM inference serving comparison.

All MI325X experiments include three configurations: full power (1000 W), power-capped at 750 W with auto performance mode, and power-capped at 750 W with manual clock frequency limits.

**Top-level DOI:** [https://doi.org/10.5281/zenodo.16945427](https://doi.org/10.5281/zenodo.16945427)

---

<!-- REPOSITORY STRUCTURE -->
## Repository Structure

```
SC25_AMD_CDNA3_Artifact/
├── code/
│   ├── 4_1_4_2_7_2_GPU_Roofline_Tools/   # Microbenchmarks for vector ALU, matrix cores, GEMM/GEMV (A1, A2, A5, A6)
│   ├── 5_Memory/                          # GPU memory latency and bandwidth benchmarks (A3)
│   ├── 6_Communication_Interface/         # TransferBench for CPU↔GPU and GPU↔GPU bandwidth (A4)
│   ├── 7_3_High_Performance_LINPACK/      # rocHPL — High-Performance LINPACK (A7)
│   ├── 7_4_High_Performance_CG/           # rocHPCG — High-Performance Conjugate Gradient (A8)
│   ├── 7_5_GROMACS_Molecular_Dynamics_Simulation/  # GROMACS 2025.2 with AMD HIP (A9)
│   └── 7_6_Large_Language_Model_LLM_Inference/     # SGLang inference scripts (A10)
└── data/
    ├── 4_1_Vector_Performance/            # Excel spreadsheets for A1 (Figures 2, 3; Table 2)
    ├── 4_2_Matrix_Performance/            # Excel spreadsheets for A2 (Figures 4, 5; Table 2)
    ├── 5_Memory/                          # Excel spreadsheet for A3 (Figures 6, 7)
    ├── 6_Communication_Interface/         # Execution logs for A4 (Table 3)
    ├── 7_2_GEMM/                          # Excel spreadsheet for A5 (Figure 8)
    ├── 7_2_GEMV/                          # Excel spreadsheet for A6 (Figure 9)
    ├── 7_3_High_Performance_LINPACK/      # Excel spreadsheet for A7 (Figures 10, 11)
    ├── 7_4_High_Performance_CG/           # Excel spreadsheet for A8 (Figures 12, 13)
    ├── 7_5_GROMACS_Molecular_Dynamics_Simulation/  # Excel spreadsheet for A9 (Figures 14–16)
    └── 7_6_Large_Language_Model_LLM_Inference/     # Excel spreadsheets for A10 (Figures 17, 18)
```

Each `code/` subdirectory is a separate **Git submodule** with its own Zenodo DOI. See each artifact section below for individual DOIs.

---

<!-- PREREQUISITES -->
## Prerequisites

### Hardware

- **AMD Instinct MI300X** and/or **AMD Instinct MI325X** GPUs (single GPU required for most experiments; 8 GPUs required for octa-GPU runs in A7, A8, A9, A10).
- For octa-GPU experiments (A8–A9), the host CPU should have at least **1.5× the aggregate GPU memory** available as system RAM.
- System configuration and topology may affect multi-GPU bandwidth measurements.

### Software

| Requirement | Version |
|---|---|
| OS | Ubuntu 22.04 |
| AMD ROCm | 6.3.3 (expected at `/opt/rocm`) |
| CMake | ≥ 3.21 |
| Docker | Required for A10 (LLM inference) |
| HuggingFace CLI | Required for A10 (model download) |

ROCm 6.3.3 is available at: [https://rocm.docs.amd.com](https://rocm.docs.amd.com)

---

<!-- GETTING STARTED -->
## Getting Started

Clone the repository and initialize all Git submodules:

```bash
git clone git@github.com:hibagus/SC25_AMD_CDNA3_Artifact.git
cd SC25_AMD_CDNA3_Artifact
git submodule update --init --recursive
```

Each artifact has its own build and run steps detailed below. Artifacts A1, A2, A5, and A6 share the same codebase (`GPU_Roofline_Tools`) and only need to be compiled once.

---

<!-- ARTIFACTS -->
## Artifacts

### A1 — Vector ALU Performance

**Relation to paper:** Figure 2, Figure 3, Table 2 (contributions C1, C3)

Measures the compute throughput for vector-vector and scalar-vector operations (ADD, MUL, FMA) across all vector ALUs in a single CU, and device-wide scalability from 1 to 304 CUs. Precisions: fp16, fp32, fp64.

**Individual Git Submodule DOI:** [https://doi.org/10.5281/zenodo.16945445](https://doi.org/10.5281/zenodo.16945445)

<details>
<summary><strong>Build</strong></summary>

```bash
# From repo root (after cloning with submodules)
cd code/4_1_4_2_7_2_GPU_Roofline_Tools/
mkdir build && cd build
cmake -DGPU_RUNTIME=HIP -DBUILD_MODE=Release ..
make -j 32
```

> To adjust runtime, modify `NUM_LOOPS` in `code/4_1_4_2_7_2_GPU_Roofline_Tools/include/GPU_Roofline_Tools/utils/common/global.h`. Default is ~1 billion iterations.

</details>

<details>
<summary><strong>Run</strong></summary>

```bash
cd code/4_1_4_2_7_2_GPU_Roofline_Tools/runs/batch/

# Run vector addition and multiplication benchmarks
./batch_run_vadd_vmul.sh

# Run fused-multiply-add benchmarks
./batch_run_vfma.sh
```

Execution logs are stored in `outputs/` (one level above the batch scripts). GPU monitoring logs are in `outputs_smi/`.

**Estimated runtime:** ~336 min (CU-level) + ~1596 min (device-level), assuming 1 min and 15 s per configuration respectively.

</details>

<details>
<summary><strong>Output data</strong></summary>

| File | Contents |
|---|---|
| `data/4_1_Vector_Performance/Vector_CU_Performance_MI300X_MI325X.xlsx` | CU-level analysis → Figure 2 |
| `data/4_1_Vector_Performance/Vector_Device_Performance_MI300X_MI325X.xlsx` | Device-level analysis → Figure 3 |
| `data/4_1_Vector_Performance/Summary_Vector_Matrix_Performance.xlsx` | Summary → Table 2 |

</details>

---

### A2 — Matrix Core Performance

**Relation to paper:** Figure 4, Figure 5, Table 2 (contributions C2, C4)

Measures the compute throughput for wave-matrix-multiply-accumulate (WMMA) operations across all matrix cores in a single CU and device-wide. Precisions: fp8, bf8, fp16, bf16, tf32, fp32, fp64.

**Individual Git Submodule DOI:** [https://doi.org/10.5281/zenodo.16945445](https://doi.org/10.5281/zenodo.16945445)

<details>
<summary><strong>Build</strong></summary>

Same as A1. See the build instructions above.

> To adjust runtime, modify `NUM_LOOPS_WMMA` in the same `global.h` file. Default is ~256 million iterations.
>
> **Note:** The frozen data in `data/4_2_Matrix_Performance/` has an inflated FLOP count due to a since-fixed bug (used `NUM_LOOPS` instead of `NUM_LOOPS_WMMA`). Divide the GFLOP/s values by 4 when comparing against freshly generated data.

</details>

<details>
<summary><strong>Run</strong></summary>

```bash
cd code/4_1_4_2_7_2_GPU_Roofline_Tools/runs/batch/

# Run wave-matrix-multiplication benchmarks
./batch_run_wmma.sh
```

Execution logs are stored in `outputs/`. GPU monitoring logs are in `outputs_smi/`.

**Estimated runtime:** ~128 min (CU-level) + ~608 min (device-level).

</details>

<details>
<summary><strong>Output data</strong></summary>

| File | Contents |
|---|---|
| `data/4_2_Matrix_Performance/Matrix_CU_Performance_MI300X_MI325X.xlsx` | CU-level analysis → Figure 4 |
| `data/4_2_Matrix_Performance/Matrix_Device_Performance_MI300X_MI325X.xlsx` | Device-level analysis → Figure 5 |
| `data/4_2_Matrix_Performance/Summary_Vector_Matrix_Performance.xlsx` | Summary → Table 2 |

</details>

---

### A3 — Memory Latency and Bandwidth

**Relation to paper:** Figure 6, Figure 7 (contributions C5, C6)

Measures on-chip memory latency (L1/L2/LLC) and bandwidth, and off-chip HBM3/HBM3E bandwidth using `gpu-latency`, `gpu-cache`, and `gpu-stream` from the NHR@FAU GPU benchmark suite (HIP-ified for AMD).

**Individual Git Submodule DOI:** [https://doi.org/10.5281/zenodo.16945392](https://doi.org/10.5281/zenodo.16945392)

<details>
<summary><strong>Build</strong></summary>

```bash
cd code/5_Memory/
./compile.sh
```

</details>

<details>
<summary><strong>Run</strong></summary>

```bash
cd code/5_Memory/batch/

# Run all memory benchmarks
./run_batch.sh
```

Execution logs are stored in `bin/` (one level above batch scripts). GPU monitoring logs are in `outputs_smi/`.

**Estimated runtime:** ~107 min total (`gpu-cache`: ~15 min, `gpu-latency`: ~90 min, `gpu-stream`: ~2 min).

</details>

<details>
<summary><strong>Output data</strong></summary>

| File | Contents |
|---|---|
| `data/5_Memory/Cache_Memory.xlsx` | On-chip and off-chip memory analysis → Figures 6, 7 |

</details>

---

### A4 — Communication Interface Bandwidth

**Relation to paper:** Table 3 (contribution C7)

Measures bidirectional bandwidth between CPU↔CPU, CPU↔GPU, and GPU↔GPU using AMD TransferBench. Each run transfers 64 GB of data per direction; bidirectional bandwidth is computed by summing both directions.

**Individual Git Submodule DOI:** [https://doi.org/10.5281/zenodo.16945390](https://doi.org/10.5281/zenodo.16945390)

<details>
<summary><strong>Build</strong></summary>

```bash
cd code/6_Communication_Interface/
make
```

</details>

<details>
<summary><strong>Run</strong></summary>

```bash
cd code/6_Communication_Interface/batch/

# Run communication interface benchmarks
./batch_run.sh
```

Execution logs are stored in the same directory as the batch scripts. GPU monitoring logs are in `outputs_smi/`, xGMI utilization logs are in `outputs_xgmi/`.

**Estimated runtime:** ~1000 min (all source/destination device combinations).

> **Note:** System topology affects results. Use the same hardware configuration as described in the paper for comparable numbers.

</details>

<details>
<summary><strong>Output data</strong></summary>

Since the bidirectional bandwidth is computed directly by summing the two directional values (all interfaces are full-duplex), no Excel spreadsheet is provided. The raw execution logs in the batch script directory contain the per-direction bandwidth numbers used to populate Table 3 in the paper.

| Directory | Contents |
|---|---|
| `data/6_Communication_Interface/` | Raw execution logs → Table 3 |

</details>

---

### A5 — GEMM

**Relation to paper:** Figure 8 (contribution C8)

Measures performance (GFLOP/s), power (W), energy (J), clock frequency (MHz), and memory bandwidth (TB/s) for large-scale GEMM (M=N=K=S, S ∈ {8K, 16K, 32K, 64K}) using **rocBLAS**. Precisions: fp64, fp32, fp16, int8.

**Individual Git Submodule DOI:** [https://doi.org/10.5281/zenodo.16945445](https://doi.org/10.5281/zenodo.16945445)

<details>
<summary><strong>Build</strong></summary>

Same as A1. See the build instructions under A1.

> To adjust runtime, modify `NUM_LOOPS_BLAS` in `global.h`. To reproduce power-capped MI325X results, see [Power-Capping MI325X](#power-capping-mi325x) (requires `sudo`).

</details>

<details>
<summary><strong>Run</strong></summary>

```bash
cd code/4_1_4_2_7_2_GPU_Roofline_Tools/runs/batch/

# Run GEMM and GEMV benchmarks (single script covers both A5 and A6)
./batch_run_rocblas.sh
```

Execution logs are in `outputs/`. GPU monitoring logs are in `outputs_smi/`.

**Estimated runtime:** ~80 min (4 dims × 4 precisions × 5 min each). Run three times on MI325X for the three power configurations.

</details>

<details>
<summary><strong>Output data</strong></summary>

| File | Contents |
|---|---|
| `data/7_2_GEMM/GEMM_Compilation.xlsx` | GEMM performance analysis → Figure 8 |

</details>

---

### A6 — GEMV

**Relation to paper:** Figure 9 (contribution C8)

Measures performance for large-scale GEMV (M=K=S, N=1, S ∈ {8K, 16K, 32K, 64K}) using **rocBLAS**. Precisions: fp64, fp32, fp16, int8.

**Individual Git Submodule DOI:** [https://doi.org/10.5281/zenodo.16945445](https://doi.org/10.5281/zenodo.16945445)

<details>
<summary><strong>Build / Run</strong></summary>

Same build and run steps as A5 — `batch_run_rocblas.sh` executes both GEMM and GEMV together.

**Estimated runtime:** ~80 min (same as A5). Run three times on MI325X for the three power configurations.

</details>

<details>
<summary><strong>Output data</strong></summary>

| File | Contents |
|---|---|
| `data/7_2_GEMV/GEMV_Compilation.xlsx` | GEMV performance analysis → Figure 9 |

</details>

---

### A7 — High-Performance LINPACK (HPL)

**Relation to paper:** Figure 10, Figure 11 (contribution C9)

Runs **rocHPL** (AMD's HPL implementation) for single-GPU and octa-GPU problem sizes that fully utilize MI300X memory. Problem parameters: `{P,Q,N,NB} = {1,1,158080,640}` (single GPU) and `{4,2,445440,640}` (octa GPU). MI325X uses the same problem size as MI300X for fair comparison.

**Individual Git Submodule DOI:** [https://doi.org/10.5281/zenodo.16945381](https://doi.org/10.5281/zenodo.16945381)

<details>
<summary><strong>Build</strong></summary>

```bash
cd code/7_3_High_Performance_LINPACK/
./install.sh
```

> For power-capped MI325X (manual mode: 900 MHz clock limit), see [Power-Capping MI325X](#power-capping-mi325x).

</details>

<details>
<summary><strong>Run</strong></summary>

```bash
cd code/7_3_High_Performance_LINPACK/build/batch/

# Single-GPU HPL run
./run_batch_single.sh

# Octa-GPU HPL run
./run_batch_octal.sh
```

Execution logs are in `outputs_run/`. GPU monitoring logs are in `outputs_smi/`, xGMI logs in `outputs_xgmi/`.

**Estimated runtime:** < 1 min (single GPU), ~3 min (octa GPU). Run three times on MI325X for the three power configurations.

</details>

<details>
<summary><strong>Output data</strong></summary>

| File | Contents |
|---|---|
| `data/7_3_High_Performance_LINPACK/HPL.xlsx` | HPL performance, power, energy → Figures 10, 11 |

</details>

---

### A8 — High-Performance Conjugate Gradient (HPCG)

**Relation to paper:** Figure 12, Figure 13 (contribution C10)

Runs **rocHPCG** for single-GPU and octa-GPU with local dimensions nx=ny=nz=624. An additional MI325X experiment uses nx=ny=nz=680 to investigate the effect of larger memory capacity.

**Individual Git Submodule DOI:** [https://doi.org/10.5281/zenodo.16945385](https://doi.org/10.5281/zenodo.16945385)

<details>
<summary><strong>Build</strong></summary>

```bash
cd code/7_4_High_Performance_CG/
./install.sh
```

> For power-capped MI325X (manual mode: 1100 MHz clock limit), see [Power-Capping MI325X](#power-capping-mi325x).

</details>

<details>
<summary><strong>Run</strong></summary>

```bash
cd code/7_4_High_Performance_CG/build/batch/

# Single-GPU HPCG run
./run_batch_single.sh

# Octa-GPU HPCG run
./run_batch_octal.sh
```

Execution logs, log files, and result files are stored in the batch script directory. GPU monitoring logs are in `outputs_smi/`, xGMI logs in `outputs_xgmi/`.

**Estimated runtime:** ~6000 s per run (~2400 s CPU initialization + ~3600 s GPU benchmark). Host memory should be ≥1.5× the aggregate GPU memory for octa-GPU runs. Run three times on MI325X for the three power configurations.

</details>

<details>
<summary><strong>Output data</strong></summary>

| File | Contents |
|---|---|
| `data/7_4_High_Performance_CG/HPCG.xlsx.tar.gz` | HPCG performance, power, energy → Figures 12, 13 |

</details>

---

### A9 — GROMACS Molecular Dynamics Simulation

**Relation to paper:** Figure 14, Figure 15, Figure 16 (contribution C11)

Runs **GROMACS 2025.2** (compiled with AMD HIP) on the Satellite Tobacco Mosaic Virus (STMV) dataset with 1 million atoms, using both Reaction Field (RF) and Particle Mesh Ewald (PME) for long-range electrostatics. Tests single-GPU and octa-GPU scalability.

**Individual Git Submodule DOI:** [https://doi.org/10.5281/zenodo.16945374](https://doi.org/10.5281/zenodo.16945374)

<details>
<summary><strong>Build</strong></summary>

```bash
cd code/7_5_GROMACS_Molecular_Dynamics_Simulation/

# Compile GROMACS with AMD HIP
./install.sh

# Download and prepare the STMV dataset
./dataset.sh
```

> For power-capped MI325X (manual mode: 1600 MHz clock limit), see [Power-Capping MI325X](#power-capping-mi325x).

</details>

<details>
<summary><strong>Run</strong></summary>

```bash
cd code/7_5_GROMACS_Molecular_Dynamics_Simulation/batch/

./batch_run.sh
```

Execution logs, GROMACS log files, and EDR files are stored in the batch script directory. GPU monitoring logs are in `outputs_smi/`, xGMI logs in `outputs_xgmi/`.

**Estimated runtime:** < 6 min per experiment, 10 experiments total (~60 min per GPU). Run three times on MI325X for the three power configurations.

</details>

<details>
<summary><strong>Output data</strong></summary>

| File | Contents |
|---|---|
| `data/7_5_GROMACS_Molecular_Dynamics_Simulation/GROMACS.xlsx.tar.gz` | GROMACS performance, power, energy → Figures 14, 15, 16 |

</details>

---

### A10 — LLM Inference Serving

**Relation to paper:** Figure 17, Figure 18 (contribution C12)

Runs **SGLang** (AMD-optimized) to serve **DeepSeek R1** (671B parameters, tensor parallelism across 8 GPUs). Tests input sequence lengths 100–12800, output lengths 100–1600, and concurrency 1–256 (360 combinations total).

**Docker Image DOI:** [https://doi.org/10.5281/zenodo.16945613](https://doi.org/10.5281/zenodo.16945613)

<details>
<summary><strong>Setup: Docker and Model Download</strong></summary>

```bash
# Pull the AMD SGLang Docker image
# (also archived on Zenodo via the DOI above)
docker pull ghcr.io/hibagus/sc25_amd_cdna3_artifact/sgl-dev:upstream_20250312_v1

# Launch the container
docker run -it --ipc=host --network=host --privileged \
    --shm-size 32G --cap-add=CAP_SYS_ADMIN \
    --device=/dev/kfd --device=/dev/dri \
    --group-add video --group-add render \
    --cap-add=SYS_PTRACE \
    --security-opt seccomp=unconfined \
    --security-opt apparmor=unconfined \
    -v /home:/workspace \
    rocm/sgl-dev:upstream_20250312_v1

# Inside the container — clone the repo
git clone git@github.com:hibagus/SC25_AMD_CDNA3_Artifact.git
cd SC25_AMD_CDNA3_Artifact
git submodule update --init --recursive

# Download the DeepSeek R1 model (WARNING: requires ~700 GB storage)
huggingface-cli download deepseek-ai/DeepSeek-R1

# Start the SGLang inference server
python3 -m sglang.launch_server \
    --model deepseek-ai/DeepSeek-R1 \
    --tp 8 \
    --trust-remote-code \
    --chunked-prefill-size 131072 \
    --enable-torch-compile \
    --torch-compile-max-bs 256
```

> For power-capped MI325X (manual mode: 1700 MHz clock limit), see [Power-Capping MI325X](#power-capping-mi325x).

</details>

<details>
<summary><strong>Run</strong></summary>

```bash
# Execute this from inside the Docker container
cd code/7_6_Large_Language_Model_LLM_Inference/batch/

./batch_run.sh
```

Inference result JSON files are stored in the batch script directory. Output logs are in `outputs_py/` (one level up). GPU monitoring logs are in `outputs_smi/`, xGMI logs in `outputs_xgmi/`.

**Estimated runtime:** < 1000 min for all 360 combinations. Run three times on MI325X for the three power configurations.

</details>

<details>
<summary><strong>Output data</strong></summary>

| File | Contents |
|---|---|
| `data/7_6_Large_Language_Model_LLM_Inference/DeepSeek_R1_Summary.xlsx` | Summary → Figures 17, 18 |
| `data/7_6_Large_Language_Model_LLM_Inference/deepseek_mi300x_750W.xlsx` | MI300X at 750W |
| `data/7_6_Large_Language_Model_LLM_Inference/deepseek_mi325x_1000W.xlsx` | MI325X at 1000W (full power) |
| `data/7_6_Large_Language_Model_LLM_Inference/deepseek_mi325x_750W_Auto.xlsx` | MI325X at 750W auto mode |
| `data/7_6_Large_Language_Model_LLM_Inference/deepseek_mi325x_750W_Manual.xlsx` | MI325X at 750W manual mode |

</details>

---

<!-- DATA -->
## Data

The `data/` directory contains pre-collected experimental results as Excel (`.xlsx`) spreadsheets. These files can be opened directly to inspect the raw measurements and see the analyses that produced each figure and table in the paper — no code execution is required to access the data.

| Directory | Artifact | Paper Elements |
|---|---|---|
| [`data/4_1_Vector_Performance/`](https://github.com/hibagus/SC25_AMD_CDNA3_Artifact/tree/master/data/4_1_Vector_Performance) | A1 | Figure 2, Figure 3, Table 2 |
| [`data/4_2_Matrix_Performance/`](https://github.com/hibagus/SC25_AMD_CDNA3_Artifact/tree/master/data/4_2_Matrix_Performance) | A2 | Figure 4, Figure 5, Table 2 |
| [`data/5_Memory/`](https://github.com/hibagus/SC25_AMD_CDNA3_Artifact/tree/master/data/5_Memory) | A3 | Figure 6, Figure 7 |
| [`data/6_Communication_Interface/`](https://github.com/hibagus/SC25_AMD_CDNA3_Artifact/tree/master/data/6_Communication_Interface) | A4 | Table 3 |
| [`data/7_2_GEMM/`](https://github.com/hibagus/SC25_AMD_CDNA3_Artifact/tree/master/data/7_2_GEMM) | A5 | Figure 8 |
| [`data/7_2_GEMV/`](https://github.com/hibagus/SC25_AMD_CDNA3_Artifact/tree/master/data/7_2_GEMV) | A6 | Figure 9 |
| [`data/7_3_High_Performance_LINPACK/`](https://github.com/hibagus/SC25_AMD_CDNA3_Artifact/tree/master/data/7_3_High_Performance_LINPACK) | A7 | Figure 10, Figure 11 |
| [`data/7_4_High_Performance_CG/`](https://github.com/hibagus/SC25_AMD_CDNA3_Artifact/tree/master/data/7_4_High_Performance_CG) | A8 | Figure 12, Figure 13 |
| [`data/7_5_GROMACS_Molecular_Dynamics_Simulation/`](https://github.com/hibagus/SC25_AMD_CDNA3_Artifact/tree/master/data/7_5_GROMACS_Molecular_Dynamics_Simulation) | A9 | Figure 14, Figure 15, Figure 16 |
| [`data/7_6_Large_Language_Model_LLM_Inference/`](https://github.com/hibagus/SC25_AMD_CDNA3_Artifact/tree/master/data/7_6_Large_Language_Model_LLM_Inference) | A10 | Figure 17, Figure 18 |

---

<!-- POWER CAPPING -->
## Power-Capping MI325X

Several experiments compare MI325X at full power (1000 W) against a power-capped configuration (750 W) in two performance modes. **Requires `sudo` access.**

```bash
# Cap MI325X power to 750 W
sudo amd-smi set --power-cap 750

# Set clock frequency limit for manual mode
# (replace FREQ_MHZ with the value for your experiment)
sudo amd-smi set --clk-limit sclk max FREQ_MHZ

# Reset to factory defaults when done
sudo amd-smi reset -c
sudo amd-smi reset -o
```

| Artifact | Manual Mode Clock Limit |
|---|---|
| A5 (GEMM), A6 (GEMV) | 1400 MHz |
| A7 (HPL) | 900 MHz |
| A8 (HPCG) | 1100 MHz |
| A9 (GROMACS) | 1600 MHz |
| A10 (LLM Inference) | 1700 MHz |

---

<!-- LICENSE -->
## License

See [`LICENSE.txt`](LICENSE.txt) for details.

---

<!-- CONTACT -->
## Contact

For questions about the artifact, please open an issue on GitHub:
[https://github.com/hibagus/SC25_AMD_CDNA3_Artifact/issues](https://github.com/hibagus/SC25_AMD_CDNA3_Artifact/issues)

Project Link: [https://github.com/hibagus/SC25_AMD_CDNA3_Artifact](https://github.com/hibagus/SC25_AMD_CDNA3_Artifact)

---

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

- [AMD ROCm](https://rocm.docs.amd.com) — GPU compute platform
- [rocBLAS](https://github.com/ROCmSoftwarePlatform/rocBLAS) — BLAS library for GEMM/GEMV
- [rocHPL](https://github.com/ROCmSoftwarePlatform/rocHPL) — HPL for AMD GPUs
- [rocHPCG](https://github.com/ROCmSoftwarePlatform/rocHPCG) — HPCG for AMD GPUs
- [GPU Benchmarks by NHR@FAU](https://github.com/nhr-fau) — Memory benchmark suite
- [TransferBench by AMD](https://github.com/ROCmSoftwarePlatform/TransferBench) — Communication bandwidth benchmark
- [GROMACS](https://www.gromacs.org) — Molecular dynamics simulation
- [SGLang](https://github.com/sgl-project/sglang) — LLM inference framework

---

<!-- MARKDOWN LINKS & IMAGES -->
[doi-shield]: https://img.shields.io/badge/DOI-10.5281%2Fzenodo.16945427-blue?style=for-the-badge
[doi-url]: https://doi.org/10.5281/zenodo.16945427
[license-shield]: https://img.shields.io/github/license/hibagus/SC25_AMD_CDNA3_Artifact.svg?style=for-the-badge
[license-url]: https://github.com/hibagus/SC25_AMD_CDNA3_Artifact/blob/master/LICENSE.txt
[contributors-shield]: https://img.shields.io/github/contributors/hibagus/SC25_AMD_CDNA3_Artifact.svg?style=for-the-badge
[contributors-url]: https://github.com/hibagus/SC25_AMD_CDNA3_Artifact/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/hibagus/SC25_AMD_CDNA3_Artifact.svg?style=for-the-badge
[forks-url]: https://github.com/hibagus/SC25_AMD_CDNA3_Artifact/network/members
[stars-shield]: https://img.shields.io/github/stars/hibagus/SC25_AMD_CDNA3_Artifact.svg?style=for-the-badge
[stars-url]: https://github.com/hibagus/SC25_AMD_CDNA3_Artifact/stargazers
[issues-shield]: https://img.shields.io/github/issues/hibagus/SC25_AMD_CDNA3_Artifact.svg?style=for-the-badge
[issues-url]: https://github.com/hibagus/SC25_AMD_CDNA3_Artifact/issues
