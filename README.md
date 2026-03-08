# `(generate_project_file)` does not work with VSRocq

1. Install dependencies

```sh
opam install --deps-only .
```

2. Build project

```sh
dune build
```

3. Edit `_RocqProject` to remove `-arg -boot` line. This causes an error with VSRocq, but was recently changed to be just a warning (https://github.com/rocq-prover/rocq/issues/20519). AFAIK this is not yet downstreamed to VSRocq. Be wary of not calling `dune build` again as this will overwrite your changes to `_RocqProject`.

4. Open VSCode with the VSRocq extension.

5. Open the `Second/S.v` file and try to evaluate it with VSRocq. This will not work due to the first `Import` line. Here are some alternatives that all work whenever doing `dune build`, but do not with VSRocq:

- `Require Import First.F.`
- `Require Import F.`
- `From Repro.First Require Import F.`
