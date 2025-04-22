# Release Guide

1. Bump version in `lib/api_solvecaptcha/version.rb` to `X.Y.Z`.
2. Commit changes:
   ```bash
   git commit -am "Bump to vX.Y.Z"
   ```
3. Create and annotate tag:
   ```bash
   git tag -a vX.Y.Z -m "Release vX.Y.Z"
   ```
4. Push code and tag:
   ```bash
   git push origin main --tags
   ```
5. GitHub Actions will build and publish automatically.