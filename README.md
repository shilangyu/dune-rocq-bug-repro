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

5. Open the `S.v` file and try to evaluate it with VSRocq. This will not work due to the first `Import` line. `Require Import Repro.F` does not work either. Both imports do work well whenever doing `dune build`.
