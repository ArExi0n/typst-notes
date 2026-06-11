---
date: 2026-05-22
class: moc
tags:
  - moc
  - books
description: Gallery of all books in my library
---

# Book Library

```dataviewjs
const books = dv.pages('"Books"')
  .where(p => p.class === "book-note" && p.file.name != "_Index")
  .sort(p => p.status === "reading" ? 0 : 1)

function openNote(path) {
  dv.app.workspace.openLinkText(path, '', false)
}

function openPdf(pdfField) {
  if (!pdfField) return
  let path
  if (typeof pdfField === 'object' && pdfField.path) {
    path = pdfField.path
  } else {
    path = String(pdfField).replace(/^\[\[|\]\]$/g, '')
  }
  const file = dv.app.vault.getAbstractFileByPath(path)
  if (file) dv.app.openWithDefaultApp(file)
}

if (books.length === 0) {
  dv.paragraph("No books in your library yet. Create a book note using the book-note template.")
} else {
  const container = dv.container
  const row = container.createDiv({ cls: 'book-row' })

  for (const b of books) {
    const card = row.createDiv({ cls: 'book-card' })

    // Cover — click opens note in Obsidian
    if (b.cover) {
      const coverPath = String(b.cover).replace(/^\[\[|\]\]$/g, '')
      const img = card.createEl('img', { cls: 'book-cover', attr: { src: coverPath, alt: b.title || '' } })
      img.onclick = () => openNote(b.file.path)
    } else {
      const p = card.createDiv({ cls: 'book-placeholder' })
      p.textContent = '📖'
      p.style.cssText = `background:${b.color || '#2d2d2d'}`
      p.onclick = () => openNote(b.file.path)
    }

    // Title
    const title = card.createEl('div', { cls: 'book-title', text: b.title || b.file.name })
    title.onclick = () => openNote(b.file.path)

    // Author
    if (b.author) card.createEl('div', { cls: 'book-author', text: b.author })

    // Description
    if (b.description) card.createEl('div', { cls: 'book-desc', text: b.description })

    // Status badge
    if (b.status) {
      card.createEl('span', { cls: `book-badge status-${b.status}`, text: b.status })
    }

    // Buttons
    const actions = card.createDiv({ cls: 'book-actions' })

    const openBtn = actions.createEl('button', { cls: 'book-btn obsidian-btn', text: 'Open' })
    openBtn.onclick = () => openNote(b.file.path)

    if (b.pdf) {
      const readBtn = actions.createEl('button', { cls: 'book-btn sioyek-btn', text: 'Read' })
      readBtn.onclick = () => openPdf(b.pdf)
    }
  }
}
```
