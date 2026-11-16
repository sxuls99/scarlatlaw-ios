@echo off
REM ═══════════════════════════════════════════════════════════
REM  ScarletLaw iOS Build — Repo Kurulum Scripti (Windows)
REM  Bu scripti bir kez çalıştırın, sonra GitHub'a push edin.
REM ═══════════════════════════════════════════════════════════

echo.
echo  ██████╗  ██████╗ █████╗ ██████╗ ██╗     ███████╗████████╗
echo  ██╔════╝██╔════╝██╔══██╗██╔══██╗██║     ██╔════╝╚══██╔══╝
echo  ███████╗██║     ███████║██████╔╝██║     █████╗     ██║
echo  ╚════██║██║     ██╔══██║██╔══██╗██║     ██╔══╝     ██║
echo  ███████║╚██████╗██║  ██║██║  ██║███████╗███████╗   ██║
echo  ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝   ╚═╝
echo.
echo  ScarletLaw iOS Sideload Builder - Kurulum
echo  ══════════════════════════════════════════
echo.

REM Gerekli araçları kontrol et
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo [HATA] Git bulunamadi! https://git-scm.com adresinden kurun.
    pause
    exit /b 1
)

git lfs version >nul 2>nul
if %errorlevel% neq 0 (
    echo [HATA] Git LFS bulunamadi!
    echo Kurmak icin: git lfs install
    echo Veya: https://git-lfs.com
    pause
    exit /b 1
)

echo [OK] Git ve Git LFS hazir.
echo.

REM Repo başlat
echo [1/5] Git repo baslatiliyor...
git init
git lfs install

REM LFS tracking ayarla (büyük dosyalar için)
echo [2/5] Git LFS tracking ayarlaniyor...
git lfs track "*.rpa"
git lfs track "*.rpyc"
git lfs track "*.otf"
git lfs track "*.ttf"
git lfs track "*.ogg"
git lfs track "*.mp3"
git lfs track "*.mp4"
git lfs track "*.webm"
git lfs track "*.png"
git lfs track "*.jpg"
git lfs track "*.jpeg"
git lfs track "*.webp"

echo.
echo [3/5] Dosyalar ekleniyor (bu uzun surebilir, ~2.7 GB)...
git add .gitattributes
git add .gitignore
git add .github/
git add ExportOptions.plist
git add ScarletLaw-pc/

echo.
echo [4/5] Commit olusturuluyor...
git commit -m "ScarletLaw v0.4.2 - iOS sideload build pipeline"

echo.
echo [5/5] Simdi GitHub'a push etmeniz gerekiyor:
echo.
echo   git remote add origin https://github.com/KULLANICI/REPO.git
echo   git branch -M main
echo   git push -u origin main
echo.
echo Push tamamlandiktan sonra:
echo   GitHub → Actions → "ScarletLaw iOS IPA" → Run workflow
echo.
pause
