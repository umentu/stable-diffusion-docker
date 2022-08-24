# Stable Diffusion Docker

https://github.com/CompVis/stable-diffusion

Usage:

0. Install git-lfs

for Mac
```bash
brew install git-lfs
```

for Windows
https://github.com/git-lfs/git-lfs/releases/tag/v3.2.0

Common
```bash
git fls install
```

1. Clone Stable-Diffusion original model
```bash
git clone https://huggingface.co/CompVis/stable-diffusion-v-1-4-original model
```

2. Create a Haging Face account and login.

https://huggingface.co/

3. Accept License

https://huggingface.co/CompVis/stable-diffusion-v-1-4-original

4. Git clone model

```bash
git clone https://huggingface.co/CompVis/stable-diffusion-v-1-4-original model
```

5 Rename `model/sd-v1-4.ckpt` to `model/model.ckpt`

```bash
mv model/sd-v1-4.ckpt model/model.ckpt

5. Docker Container start and login.

```bash
docker-compose exec app bash
```

6. Execute

```bash
cd stable-diffusion
python scripts/txt2img.py --prompt "a japanese beautiful girl" --plms
```