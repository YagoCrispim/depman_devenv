# Depman

## Dev env

### Local install

```bash
./cli clone
```

### Commit changes in all projects

```bash
./cli commit "commit message"
```

### GIT status in all projects

```bash
./cli status
```

### GIT status in all projects

```bash
./cli pull
```

## Sandbox

### Depman CLI - Requires Lua5.4

```bash
./depman.lua
```

### Depman CLI install - Requires Lua5.4

```bash
./depman.lua -i
```

### Run Sandbox with Hot reload

```bash
./cli dev
```

### Run Sandbox once

```bash
./cli run
```

## CLI Debugger

- Just call the global DBG function anywhere like this

```lua
DBG()()
```
