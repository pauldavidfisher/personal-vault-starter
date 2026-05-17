# Personal Vault — Starter

**[→ Live Demo](https://personal-vault-starter.onrender.com)**

The quickest way to get Personal Vault running on your machine.

**Personal Vault** is a local personal library app. Fetch any text from the web, highlight passages that matter, add your own notes, and build a searchable library that is entirely yours.

---

## Try the live demo first

**[https://personal-vault-starter.onrender.com](https://personal-vault-starter.onrender.com)**

Search for "wisdom", "virtue", or "history". Browse the folders. Click "All clips" to see saved highlights. Then come back and get it running locally.

---

## Get started in 3 steps

### 1. Clone this repo

```bash
git clone https://github.com/pauldavidfisher/personal-vault-starter.git
cd personal-vault-starter
```

### 2. Edit config.yaml

```yaml
vault:
  path: ~/Documents/vault   # point this at your notes folder
```

### 3. Run

```bash
./start.sh
```

Open http://localhost:5002 in your browser.

---

## What you get

- **Search** across all your notes, fetched texts, clips, and bookmarks simultaneously
- **Fetch any URL** — pulls full text from Project Gutenberg, Wikipedia, CCEL, and most websites, saved permanently to your vault
- **Clip passages** — select any text in the viewer, add a note, build a personal commonplace book
- **Upload files** — drag and drop `.txt`, `.md`, `.rtf`, `.pdf`, or `.csv`
- **Bookmarks** — import a Raindrop.io export and browse by Dewey Decimal Classification
- **Folder browser** — click any folder to see file cards with title and author

---

## Your vault folder

Put any `.txt`, `.md`, or `.rtf` files in your vault folder and they'll be indexed and searchable immediately.

```
your-vault/
  fetched/        ← texts saved via Fetch a URL
  notes/          ← your own writing
  essays/         ← longer pieces
  ...             ← any folders you like
```

---

## Configuration

Edit `config.yaml`:

```yaml
vault:
  path: ~/Documents/vault

database:
  path: ~/Documents/vault/vault.db

server:
  port: 5002
  host: 127.0.0.1

app:
  name: Personal Vault
  welcome_quote: "Manners are of more importance than laws."
  welcome_quote_author: Edmund Burke
```

---

## Import bookmarks (optional)

If you use Raindrop.io:

```bash
python3 raindrop_ddc.py --input your-export.csv --output export_ddc.csv
python3 bookmarks_index.py --input export_ddc.csv
```

---

## Requirements

- Python 3.9+
- macOS, Linux, or Windows

Dependencies installed automatically by `start.sh`. For PDF support:

```bash
pip3 install pymupdf --break-system-packages
```

---

## Source

Built on [personal-vault](https://github.com/pauldavidfisher/personal-vault).  
MIT License.
