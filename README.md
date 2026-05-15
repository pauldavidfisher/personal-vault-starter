# Personal Vault — Starter

The quickest way to get Personal Vault running on your machine.

**Personal Vault** is a local personal library app. Fetch any text from the web, highlight passages that matter, add your own notes, and build a searchable library that is entirely yours.

---

## Get started in 3 steps

### 1. Clone this repo

```bash
git clone https://github.com/pauldavidfisher/personal-vault-starter.git
cd personal-vault-starter
```

### 2. Edit config.yaml

Open `config.yaml` and set your vault path:

```yaml
vault:
  path: ~/Documents/vault   # point this at your notes folder
```

The vault folder will be created automatically if it doesn't exist.

### 3. Run

```bash
./start.sh
```

Then open http://localhost:5002 in your browser.

---

## What you get

A local web app with:

- **Search** across all your notes, fetched texts, clips, and bookmarks
- **Fetch any URL** — pulls full text from Project Gutenberg, Wikipedia, CCEL, and most websites, saved permanently to your vault
- **Clip passages** — select any text in the viewer, add a note, build a personal commonplace book
- **Upload files** — drag and drop `.txt`, `.md`, `.rtf`, `.pdf`, or `.csv`
- **Bookmarks** — import a Raindrop.io export and browse by Dewey Decimal Classification
- **Folder browser** — click any folder to see file cards with title and author

---

## Your vault folder

```
your-vault/
  fetched/        ← texts saved via Fetch a URL
  notes/          ← your own writing
  essays/         ← longer pieces
  ...             ← any folders you like
```

Put any `.txt`, `.md`, or `.rtf` files in the vault folder and they'll be indexed and searchable immediately.

---

## Importing bookmarks (optional)

If you use Raindrop.io:

1. Export your bookmarks from Raindrop as CSV
2. Run the classifier:
```bash
python3 raindrop_ddc.py --input your-export.csv --output export_ddc.csv
```
3. Drop `export_ddc.csv` into the upload zone in the app — it will import automatically

---

## Configuration

Edit `config.yaml` to customize:

```yaml
vault:
  path: ~/Documents/vault        # your notes folder

database:
  path: ~/Documents/vault/vault.db  # created automatically

server:
  port: 5002
  host: 127.0.0.1                # change to 0.0.0.0 for network access

app:
  name: Personal Vault
  welcome_quote: "Manners are of more importance than laws."
  welcome_quote_author: Edmund Burke
```

---

## Requirements

- Python 3.9+
- macOS, Linux, or Windows

Dependencies are installed automatically by `start.sh`. For better PDF support:

```bash
pip3 install pymupdf --break-system-packages
```

---

## Source

This starter pulls from [personal-vault](https://github.com/pauldavidfisher/personal-vault).  
Built by [Paul Fisher](https://github.com/pauldavidfisher).  
MIT License.
