# ExpenseTracker Wiki

Documentation site built with [Zensical](https://zensical.org).

## Getting started

Requires Python 3. Run the setup script once to create a `.venv` and install Zensical:

**Windows (PowerShell)**

```powershell
.\setup.ps1
# If scripts are blocked: powershell -ExecutionPolicy Bypass -File .\setup.ps1
.\.venv\Scripts\Activate.ps1
zensical serve
```

**macOS / Linux**

```bash
./setup.sh
source .venv/bin/activate
zensical serve
```

Then open http://localhost:8000. Pushing to `master` deploys the site to GitHub Pages.
