# ScarletLaw → iOS Sideload Builder

Ren'Py 8.4.0 ile build edilen **ScarletLaw v0.4.2** oyununu GitHub Actions üzerinde iOS IPA olarak derler.

## Hızlı Başlangıç

```bash
# 1. Bu repoyu klonlayın veya setup.bat çalıştırın
# 2. GitHub'a push edin (Git LFS gerekli — archive.rpa 2.7 GB)
# 3. Actions → Run workflow
# 4. IPA'yı indirip AltStore ile yükleyin
```

## Gereksinimler

- **Git LFS** — `archive.rpa` (2.7 GB) için zorunlu
- **GitHub hesabı** — Ücretsiz tier yeterli (macOS runner dahil)
- **AltStore** veya **Sideloadly** — IPA'yı iPhone'a yüklemek için

## Önemli

- macOS runner'lar **10x** dakika harcar (ücretsiz plan: 2000 dk/ay → ~200 dk macOS)
- Her build **~30-60 dk** sürebilir (2.7 GB proje)
- Git LFS ücretsiz tier: **1 GB depolama, 1 GB/ay bant genişliği**
  - archive.rpa 2.7 GB → **Git LFS Data Pack** ($5/ay, 50 GB) gerekebilir
