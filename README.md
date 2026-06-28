# Performance Profiler

A lightweight Python profiler for automatically measuring execution time, CPU usage, and peak memory for functions and script entry points.

## Features

- Automatic profiling decorator for functions
- Block-level profiling with context manager support
- CLI entrypoint for profiling a target module or script
- JSON and CSV report generation

## Quick start

1. Install dependencies:

```bash
pip install -r requirements.txt
```

2. Run the profiler against a script or module:

```bash
python -m performance_profiler target_script.py --entry main --report profile.json --format json
```

Or with the console script after installation:

```bash
perfprof target_script.py --entry main --report profile.json --format json
```

A built-in sample app is available in `app.py`:

```bash
python app.py
```

## Example usage

```python
from performance_profiler import ProfilerEngine, ProfileCollector

collector = ProfileCollector()
profiler = ProfilerEngine(collector)

@profiler.profile
def work(n):
    for _ in range(n):
        pass

work(1000000)
print(collector.to_list())
```

## Report formats

- `json`
- `csv`
