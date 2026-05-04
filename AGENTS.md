# run.sh

Three-stage pipeline: build → install → sync.

```bash
./run.sh        # run all stages (default)
./run.sh build   # run all stages
./run.sh install # run install + sync
./run.sh sync    # run sync only
```

- **build**: runs `./build.sh`
- **install**: runs `./install.sh`
- **sync**: runs `./sync.sh`

# install.sh

Install kernel modules and image to a mounted SD card.

```bash
./install.sh
```

- Kernel name: `kernel8-custom`
- Modules: installed to `../mnt/root/lib/modules/`
- Image: `arch/arm64/boot/Image` → `../mnt/boot/firmware/kernel8-custom.img`

# sync.sh

Sync kernel image and modules to a remote Raspberry Pi.

```bash
./sync.sh
```

- Image: `kernel8-custom.img` → `root@pi:/boot/firmware/`
- Modules: `6.12.67-v8-MY-CUSTOM+` → `root@pi:/lib/modules/`
