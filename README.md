# Android Development Environment ❄️


## Run this flake

### nix-shell

```
nix develop github:r17x/android.nix
```

### with direnv

When you lazy call the command 'nix develop', you need to create a .envrc file and just go to the project directory and auto load it.

```
$(project) echo "use flake \"githu:r17x/android.nix\"" > .envrc 
$(project) direnv allow
```


Thanks to @lynxluna.
