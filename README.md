# Bimennatyar APK Builder

این پوشه یک ریپازیتوری مستقل برای ساخت APK اندروید از سایت شماست.

## Start URL

اولین صفحه اپ روی صفحه ورود ست شده است:

`https://bimennatyar.ir/accounts/login/`

## ساختار ریپو

- `.github/workflows/build-apk.yml` ساخت خودکار APK در GitHub Actions
- `capacitor.config.json` تنظیمات اپ و URL
- `scripts/prepare-android.sh` ساخت/سینک پروژه اندروید
- `resources/icon.png` آیکن اصلی
- `resources/splash.png` اسپلش
- `www/index.html` وب‌دیر حداقلی برای Capacitor

## روش استفاده

1. همین پوشه `apk` را به عنوان یک ریپوی جدا در GitHub آپلود کن.
2. Branch اصلی را `main` یا `master` نگه دار.
3. از تب Actions ورک‌فلو `Build Android APK` را اجرا کن.
4. خروجی APK را از بخش Artifacts دانلود کن:
   - `bimennatyar-debug-apk/app-debug.apk`

## نکات

- این خروجی Debug است. برای انتشار در Play Store باید keystore و signing release اضافه شود.
- چون اپ از URL زنده بارگذاری می‌کند، HTTPS و در دسترس بودن دامنه لازم است.
- اگر خواستی release signed هم اضافه کنم، فایل workflow را با secrets امضای APK تکمیل می‌کنم.
