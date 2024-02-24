# Android Development Environment ❄️


## Run this flake

### nix-shell

```bash
nix develop github:r17x/android.nix
```

### with direnv

When you lazy call the command 'nix develop', you need to create a .envrc file and just go to the project directory and auto load it.

```bash
echo "use flake \"github:r17x/android.nix\"" > .envrc 
direnv allow
```

### Android Studio 

> ⚠️  only support **x86_64-linux**.


```bash
# Run this command after loading the default environment (read: first section)
nix develop github:r17x/android.nix#androidStudio

# OR - same thing as above
nix develop github:r17x/android.nix
nix develop github:r17x/android.nix#androidStudio

# OR - direnv
echo "use flake \"githu:r17x/android.nix\"" > .envrc 
echo "use flake \"githu:r17x/android.nix#androidStudio\"" >> .envrc 
direnv allow
```



Thanks to @lynxluna.
